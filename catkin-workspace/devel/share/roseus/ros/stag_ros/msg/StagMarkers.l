;; Auto-generated. Do not edit!


(when (boundp 'stag_ros::StagMarkers)
  (if (not (find-package "STAG_ROS"))
    (make-package "STAG_ROS"))
  (shadow 'StagMarkers (find-package "STAG_ROS")))
(unless (find-package "STAG_ROS::STAGMARKERS")
  (make-package "STAG_ROS::STAGMARKERS"))

(in-package "ROS")
;;//! \htmlinclude StagMarkers.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass stag_ros::StagMarkers
  :super ros::object
  :slots (_header _markers ))

(defmethod stag_ros::StagMarkers
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:markers __markers) (let (r) (dotimes (i 0) (push (instance stag_ros::StagMarker :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _markers __markers)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:markers
   (&rest __markers)
   (if (keywordp (car __markers))
       (send* _markers __markers)
     (progn
       (if __markers (setq _markers (car __markers)))
       _markers)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; stag_ros/StagMarker[] _markers
    (apply #'+ (send-all _markers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; stag_ros/StagMarker[] _markers
     (write-long (length _markers) s)
     (dolist (elem _markers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; stag_ros/StagMarker[] _markers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markers (let (r) (dotimes (i n) (push (instance stag_ros::StagMarker :init) r)) r))
     (dolist (elem- _markers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get stag_ros::StagMarkers :md5sum-) "651766ef07e9246eea9b89a8695f7aa1")
(setf (get stag_ros::StagMarkers :datatype-) "stag_ros/StagMarkers")
(setf (get stag_ros::StagMarkers :definition-)
      "Header header    
StagMarker[] markers    

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: stag_ros/StagMarker
Header header
uint32 id
float32 reprojection_error # sum of the squared reprojection error of each corner
geometry_msgs/PoseStamped pose # pose from solvePnP
geometry_msgs/Point[] corners # corners from marker detection in image coordinates

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :stag_ros/StagMarkers "651766ef07e9246eea9b89a8695f7aa1")


