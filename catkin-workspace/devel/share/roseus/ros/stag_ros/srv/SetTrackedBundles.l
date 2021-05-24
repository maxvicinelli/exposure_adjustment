;; Auto-generated. Do not edit!


(when (boundp 'stag_ros::SetTrackedBundles)
  (if (not (find-package "STAG_ROS"))
    (make-package "STAG_ROS"))
  (shadow 'SetTrackedBundles (find-package "STAG_ROS")))
(unless (find-package "STAG_ROS::SETTRACKEDBUNDLES")
  (make-package "STAG_ROS::SETTRACKEDBUNDLES"))
(unless (find-package "STAG_ROS::SETTRACKEDBUNDLESREQUEST")
  (make-package "STAG_ROS::SETTRACKEDBUNDLESREQUEST"))
(unless (find-package "STAG_ROS::SETTRACKEDBUNDLESRESPONSE")
  (make-package "STAG_ROS::SETTRACKEDBUNDLESRESPONSE"))

(in-package "ROS")





(defclass stag_ros::SetTrackedBundlesRequest
  :super ros::object
  :slots (_tracked_bundle_ids ))

(defmethod stag_ros::SetTrackedBundlesRequest
  (:init
   (&key
    ((:tracked_bundle_ids __tracked_bundle_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _tracked_bundle_ids __tracked_bundle_ids)
   self)
  (:tracked_bundle_ids
   (&optional __tracked_bundle_ids)
   (if __tracked_bundle_ids (setq _tracked_bundle_ids __tracked_bundle_ids)) _tracked_bundle_ids)
  (:serialization-length
   ()
   (+
    ;; uint64[] _tracked_bundle_ids
    (* 8    (length _tracked_bundle_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64[] _tracked_bundle_ids
     (write-long (length _tracked_bundle_ids) s)
     (dotimes (i (length _tracked_bundle_ids))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _tracked_bundle_ids i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _tracked_bundle_ids i)) (= (length ((elt _tracked_bundle_ids i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _tracked_bundle_ids i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _tracked_bundle_ids i) . bv) 1) -1) s))
             ((and (class (elt _tracked_bundle_ids i)) (= (length ((elt _tracked_bundle_ids i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _tracked_bundle_ids i) . bv) 0) s)
              (write-long (if (>= (elt _tracked_bundle_ids i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _tracked_bundle_ids i) s)(write-long (if (>= (elt _tracked_bundle_ids i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64[] _tracked_bundle_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tracked_bundle_ids (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _tracked_bundle_ids i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _tracked_bundle_ids i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(defclass stag_ros::SetTrackedBundlesResponse
  :super ros::object
  :slots (_success ))

(defmethod stag_ros::SetTrackedBundlesResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass stag_ros::SetTrackedBundles
  :super ros::object
  :slots ())

(setf (get stag_ros::SetTrackedBundles :md5sum-) "794fe4f70aaf8e75138989e78d87ef98")
(setf (get stag_ros::SetTrackedBundles :datatype-) "stag_ros/SetTrackedBundles")
(setf (get stag_ros::SetTrackedBundles :request) stag_ros::SetTrackedBundlesRequest)
(setf (get stag_ros::SetTrackedBundles :response) stag_ros::SetTrackedBundlesResponse)

(defmethod stag_ros::SetTrackedBundlesRequest
  (:response () (instance stag_ros::SetTrackedBundlesResponse :init)))

(setf (get stag_ros::SetTrackedBundlesRequest :md5sum-) "794fe4f70aaf8e75138989e78d87ef98")
(setf (get stag_ros::SetTrackedBundlesRequest :datatype-) "stag_ros/SetTrackedBundlesRequest")
(setf (get stag_ros::SetTrackedBundlesRequest :definition-)
      "uint64[] tracked_bundle_ids
---
bool success

")

(setf (get stag_ros::SetTrackedBundlesResponse :md5sum-) "794fe4f70aaf8e75138989e78d87ef98")
(setf (get stag_ros::SetTrackedBundlesResponse :datatype-) "stag_ros/SetTrackedBundlesResponse")
(setf (get stag_ros::SetTrackedBundlesResponse :definition-)
      "uint64[] tracked_bundle_ids
---
bool success

")



(provide :stag_ros/SetTrackedBundles "794fe4f70aaf8e75138989e78d87ef98")


