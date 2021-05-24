#!/usr/bin/env python

import rospy

import matplotlib.pyplot as plt

import dynamic_reconfigure.client

import math 

import numpy as np
import cv2

from stag_ros.msg import StagMarkers
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from scipy.linalg import svd



class Expo: 
    def __init__(self): 
        rospy.init_node("dynamic_client")

        self.client = dynamic_reconfigure.client.Client("acquisition_node", timeout=30, config_callback=self.callback)
        
        rospy.sleep(2) 

        self.subscriber = rospy.Subscriber("/bluerov_controller/ar_tag_detector", StagMarkers, self.makeGreyFrame)

        self.imgSub = rospy.Subscriber("/camera_array/cam0/image_raw", Image, self.calcGradient)
        
        self.bridge = CvBridge()
        
        
        self.percentile = 0.75
        self.weights = list()
        self.k = 5

        # variables for photometric response function recovery 
        self.photos = 3
        self.pixels = 5
        self.Zarr = np.zeros((self.pixels, self.photos))
        self.Zlocations = list()
        self.expoTimes = list()
        self.images = list()
        
        # current exposure and tget grey value 
        # start at 45 gv and 1000 et
        self.currET = 1000
        self.currGV = 45
        self.maxET = 14000
        self.etIncrement = (self.maxET - self.currET) / self.photos 
        self.photoNumber = 0
        

    def callback(self, config):
        rospy.loginfo("Config set to {target_grey_value}, {exposure_time}".format(**config))



    def makeGreyFrame(self, info):

        img = np.zeros((800, 800, 3), np.uint8)

        #print("callback called")

        if (len(info.markers) > 0):
            blue = (255, 0, 0)
            corners = info.markers[0].corners

            for i in range(0, 4): 
                
                coords = (int(corners[i].x), int(corners[i].y))
                img = cv2.circle(img, coords, 20, blue, 3) 
        
        #print("displaying target image")
        cv2.imshow('frame', img)
        #print("finished displaying target image")
        
        cv2.waitKey(2)
        #print("waitkey done")
        #cv2.destroyAllWindows()
        
    def printMatrixDim(self, matrix): 
        print("dimensions: " + str(len(matrix)) + " x " + str(len(matrix[0])))
  

    def getPixelVar(self, img, row, col): 
        sq_sum = 0
        curr_intensity = img[row, col]
        if row-1 > 0:
            try:             
                sq_sum += (curr_intensity - img[row-1, col])**2
            except: 
                print("didnt work...")
                print(curr_intensity)
                print(img[row-1, col])
        if row + 1 < len(img):
            try: 
                sq_sum += (curr_intensity - img[row+1, col])**2
            except: 
                print(curr_intensity)
                print(img[row+1, col])
        if col - 1 > 0:
            try: 
                sq_sum += (curr_intensity - img[row, col-1])**2
            except: 
                print(curr_intensity)
                print(img[row, col-1])
        if col + 1 < len(img[0]): 
            try: 
                sq_sum += (curr_intensity - img[row, col+1])**2
            except: 
                print(curr_intensity)
                print(img[row, col+1])

        return math.sqrt(sq_sum)



    

    def addToZarr(self, img):

        ## new algorithm: 
        ## For first image, save n*5 pixels with lowest variances 
        ## For second save n*5 or less pixels with lowest variances and lower intensities
        ## repeat for each 


        print("in add to z arr")
        img = np.array(img, dtype='int64')
         
            # format: [ (i, j), k]
            # where i, j is pixel's location in space
            # k is variance - sqrt of squared sum of 4 neighbors 
        allPixels = list()
        if self.photoNumber == 0: 
            for row in range(0, len(img)): 
                for col in range(0, len(img[0])): 
                    allPixels.append([(row, col), self.getPixelVar(img, row, col)])
            allPixels.sort(key = lambda x: x[1]) # sort based on intensity 
            
            
        else:
            old_img = self.images[self.photoNumber-1]
            for p in self.Zlocations:
                row = p[0][0]
                col = p[0][1]
                if old_img[row, col] < img[row, col]:
                    
                    allPixels.append([(row, col), self.getPixelVar(img, row, col)])

                else: 
                    p
            allPixels.sort(key = lambda x: x[1])

        self.Zlocations = allPixels
            
        print("length of zlocations is: " + str(len(self.Zlocations)))        
        self.images.append(img)
        self.photoNumber += 1

        if self.photoNumber == self.photos: 
            if len(self.Zlocations) < self.pixels:
                for i in range(0, len(self.Zlocations)): 
                    entry = self.Zlocations[i]
                    row = entry[0][0]
                    col = entry[0][1]
                    for j in range(0, self.photos): 
                        img_new = self.images[j]
                        self.Zarr[i, j] = img_new[row, col]
                
            else: 
                for i in range(0, self.pixels):
                    entry = self.Zlocations[i]
                    row = entry[0][0]
                    col = entry[0][1]
                    for j in range(0, self.photos): 
                        img_new = self.images[j]
                        self.Zarr[i, j] = img_new[row, col]


        
        self.expoTimes.append(self.currET)
        self.currET += self.etIncrement
        self.updateExpo(self.currGV, self.currET)


    def calcGradient(self, frame):
        
        try: 
            cv_image = self.bridge.imgmsg_to_cv2(frame, "mono8")
        except CvBridgeError as e: 
            print(e)
        
        print(self.photoNumber)
        if self.photoNumber < self.photos: 

            self.addToZarr(cv_image)
            return
        else: 
            self.getG()
            #print(self.Zarr)
            return
        #cv2.imshow('img window', cv_image)
        #cv2.waitKey(2)
        
        grad_x = cv2.Sobel(cv_image, cv2.CV_16S, 1, 0)
        grad_y = cv2.Sobel(cv_image, cv2.CV_16S, 0, 1)
        
        self.printMatrixDim(grad_x)
        self.printMatrixDim(grad_y)

        gradient_magnitudes = list()
        for i in range(0, len(grad_x)): 
            for j in range(0, len(grad_x[0])):
                gradient_magnitudes.append(math.sqrt((grad_x[i,j]**2) + (grad_y[i,j]**2)))

        gradient_magnitudes.sort()
        m_perc = gradient_magnitudes[int(self.P*len(gradient_magnitudes))]
        print("m perc is " + str(m_perc))

        if len(self.weights == 0): 
            self.calculateWeights()
        
        m_sp = 0
        for i in range(0, self.S): 
            m_sp += gradient_magnitudes[i]*self.weights[i]
        print("m sp is " + str(m_sp))
        

    def getG(self): 
        Z_MIN = 0
        Z_MAX = 255

        l = 1
        n = 256
        A = np.zeros((self.pixels*self.photos+n+1, n+self.pixels))
        b = np.zeros((len(A), 1))

        Z = self.Zarr
        B_old = self.expoTimes 
        
        print(Z)
        k = 0

        B = list()
        for et in B_old: 
            et_new = np.log(et*(1*10**(-6)))
            B.append(et_new)
        #print(B)


        for i in range(0, self.pixels): 
            for j in range(0, self.photos):
                
                wij = self.getWeight(Z[i,j])
                intensity = int(Z[i,j])
                #print("intensity at " + str(i) + ", " + str(j) +  " is: " + str(intensity))
                A[k, intensity] = wij
                A[k, n+i] = -1*wij
                b[k] = wij * B[j] ### need to implement B - expo time of img j 
                k += 1

        A[k, 129] = 0
        k += 1

        for i in range(0, n-2):
            A[k, i] = l * self.getWeight(i+1)
            A[k, i+1] = -2*l*self.getWeight(i+1)
            A[k, i+2] = l*self.getWeight(i+1)
        
    
        
        rows, cols = np.shape(A) 
        A_zeros = np.zeros((rows, rows-cols))
        
        output = np.concatenate([A, A_zeros], axis=1)
        x = self.solve_svd(output, b)
        x_r, x_c = np.shape(x)
        g = x[:n]
        lE = x[n:x_r]
        print(g)
        #print("--------")
        #print(lE)
        x_indices = list()
        for i in range(0, n): 
            x_indices.append(i)
        self.plotter(x_indices, g, "x", "g")
    



    def solve_svd(self, A, b):
        print("solving system of equations......")
        U, s, VH = svd(A)
        c = np.dot(U.T,b)
        # diag(s) Vh x = c <=> Vh x = diag(1/s) c = w (trivial inversion of a diagonal matrix)
        
        
        w = np.dot(np.diag(1/s),c)
        # Vh x = w <=> x = Vh.H w (where .H stands for hermitian = conjugate transpose)
        x = np.dot(VH.conj().T,w)
        print(np.shape(x))
        return x

    def getWeight(self, z): 
        if z <= 0.5*(255): 
            return z
        else: 
            return 255-z

    def printMatrix(self, m): 
        
        (rows, cols) = np.shape(m)
        for i in range(0, rows): 
            for j in range(0, cols): 
                if (m[i, j] != 0): 
                    print("(" + str(i) + ", " + str(j) + "): " + str(m[i,j]))
                
        
    def calculateWeights(self): 
        print("calculating weights...")
        indices = []
        for i in range(0, self.S):
            indices.append(i)
            if i <= math.floor(self.P*self.S): 
                self.weights.append(math.sin( ((math.pi) / (2*math.floor(self.P*self.S)))*i )**self.k)
                
            else: 
                self.weights.append(math.sin( (math.pi / 2) - ((math.pi) / (2*(self.S-math.floor(self.P*self.S))))*i)**self.k)
        
        scaler = 1/ sum(self.weights)

        for i in range(0, self.S):
            self.weights[i] = self.weights[i]*(scaler)
        


    def plotter(self, x, y, xlabel, ylabel): 
        y 
        plt.plot(x, y)
        plt.xlabel(xlabel)
        plt.ylabel(ylabel)
        plt.show()
        #print("finished calculating weights...")

        
    def updateExpo(self, gv, et): 
        print("called update expo w/ et " + str(et))
        r = rospy.Rate(1)

        #while not rospy.is_shutdown():
        print("looping.....")
        self.client.update_configuration({"target_grey_value":gv, "exposure_time":et})
        r.sleep()


    def main(self): 
        print("sup")
        self.updateExpo(self.currGV, self.currET)
        rospy.spin()
        print("in main")
        
            

if __name__ == "__main__":

    e = Expo()

    e.main()

