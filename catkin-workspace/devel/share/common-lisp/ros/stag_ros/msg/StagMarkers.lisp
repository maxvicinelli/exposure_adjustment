; Auto-generated. Do not edit!


(cl:in-package stag_ros-msg)


;//! \htmlinclude StagMarkers.msg.html

(cl:defclass <StagMarkers> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (markers
    :reader markers
    :initarg :markers
    :type (cl:vector stag_ros-msg:StagMarker)
   :initform (cl:make-array 0 :element-type 'stag_ros-msg:StagMarker :initial-element (cl:make-instance 'stag_ros-msg:StagMarker))))
)

(cl:defclass StagMarkers (<StagMarkers>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StagMarkers>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StagMarkers)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stag_ros-msg:<StagMarkers> is deprecated: use stag_ros-msg:StagMarkers instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StagMarkers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stag_ros-msg:header-val is deprecated.  Use stag_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'markers-val :lambda-list '(m))
(cl:defmethod markers-val ((m <StagMarkers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stag_ros-msg:markers-val is deprecated.  Use stag_ros-msg:markers instead.")
  (markers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StagMarkers>) ostream)
  "Serializes a message object of type '<StagMarkers>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'markers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'markers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StagMarkers>) istream)
  "Deserializes a message object of type '<StagMarkers>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'markers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'markers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'stag_ros-msg:StagMarker))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StagMarkers>)))
  "Returns string type for a message object of type '<StagMarkers>"
  "stag_ros/StagMarkers")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StagMarkers)))
  "Returns string type for a message object of type 'StagMarkers"
  "stag_ros/StagMarkers")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StagMarkers>)))
  "Returns md5sum for a message object of type '<StagMarkers>"
  "651766ef07e9246eea9b89a8695f7aa1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StagMarkers)))
  "Returns md5sum for a message object of type 'StagMarkers"
  "651766ef07e9246eea9b89a8695f7aa1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StagMarkers>)))
  "Returns full string definition for message of type '<StagMarkers>"
  (cl:format cl:nil "Header header    ~%StagMarker[] markers    ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: stag_ros/StagMarker~%Header header~%uint32 id~%float32 reprojection_error # sum of the squared reprojection error of each corner~%geometry_msgs/PoseStamped pose # pose from solvePnP~%geometry_msgs/Point[] corners # corners from marker detection in image coordinates~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StagMarkers)))
  "Returns full string definition for message of type 'StagMarkers"
  (cl:format cl:nil "Header header    ~%StagMarker[] markers    ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: stag_ros/StagMarker~%Header header~%uint32 id~%float32 reprojection_error # sum of the squared reprojection error of each corner~%geometry_msgs/PoseStamped pose # pose from solvePnP~%geometry_msgs/Point[] corners # corners from marker detection in image coordinates~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StagMarkers>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'markers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StagMarkers>))
  "Converts a ROS message object to a list"
  (cl:list 'StagMarkers
    (cl:cons ':header (header msg))
    (cl:cons ':markers (markers msg))
))
