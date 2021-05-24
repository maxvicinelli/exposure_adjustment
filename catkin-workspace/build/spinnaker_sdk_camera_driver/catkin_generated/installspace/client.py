#!/usr/bin/env python2

import rospy

import dynamic_reconfigure.client

import numpy as np
import cv2

from ~/catkin_workspace/src/stag_ros/msg/ import StagMarker.msg


class Expo: 
    def __init__(self): 
        rospy.init_node("dynamic_client")

        self.client = dynamic_reconfigure.client.Client("acquisition_node", timeout=30, config_callback=self.callback)
        
        rospy.sleep(2) 

        self.subscriber = rospy.Subscriber("/bluerov_controller/ar_tag_detector", StagMarkers, self.makeGreyFrame)



    def callback(self, config):
        rospy.loginfo("Config set to {target_grey_value}, {exposure_time}".format(**config))



    def makeGreyFrame(self): 
        img = np.zeros((512,512,3), np.uint8)

        cv2.imshow('frame', img)

        cv2.waitKey(0)
        cv2.destroyAllWindows()
        #print("displayed img!")

  
    def calcGradient(self):
        cap = cv2.VideoCapture(1)

        while (True): 
            
            ret, frame = cap.read()

            gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)


            cv2.imshow('frame', gray)
            if cv2.waitKey(1) & 0xFF == ord('q'):
                break

        cap.release()
        cv2.destroyAllWindows()





    def updateExpo(self): 
        r = rospy.Rate(0.1)
        x = 90
        y = 550

        while not rospy.is_shutdown():
            print("looping.....")
            self.client.update_configuration({"target_grey_value":x, "exposure_time":y})
            r.sleep()


    def main(self): 
        #self.makeGreyFrame()
        self.calcGradient()
        #self.updateExpo()
            

if __name__ == "__main__":

    e = Expo()

    e.main()

