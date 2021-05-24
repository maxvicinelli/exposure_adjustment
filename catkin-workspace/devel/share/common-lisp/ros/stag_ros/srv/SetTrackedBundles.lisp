; Auto-generated. Do not edit!


(cl:in-package stag_ros-srv)


;//! \htmlinclude SetTrackedBundles-request.msg.html

(cl:defclass <SetTrackedBundles-request> (roslisp-msg-protocol:ros-message)
  ((tracked_bundle_ids
    :reader tracked_bundle_ids
    :initarg :tracked_bundle_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SetTrackedBundles-request (<SetTrackedBundles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTrackedBundles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTrackedBundles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stag_ros-srv:<SetTrackedBundles-request> is deprecated: use stag_ros-srv:SetTrackedBundles-request instead.")))

(cl:ensure-generic-function 'tracked_bundle_ids-val :lambda-list '(m))
(cl:defmethod tracked_bundle_ids-val ((m <SetTrackedBundles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stag_ros-srv:tracked_bundle_ids-val is deprecated.  Use stag_ros-srv:tracked_bundle_ids instead.")
  (tracked_bundle_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTrackedBundles-request>) ostream)
  "Serializes a message object of type '<SetTrackedBundles-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tracked_bundle_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'tracked_bundle_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTrackedBundles-request>) istream)
  "Deserializes a message object of type '<SetTrackedBundles-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tracked_bundle_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tracked_bundle_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTrackedBundles-request>)))
  "Returns string type for a service object of type '<SetTrackedBundles-request>"
  "stag_ros/SetTrackedBundlesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTrackedBundles-request)))
  "Returns string type for a service object of type 'SetTrackedBundles-request"
  "stag_ros/SetTrackedBundlesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTrackedBundles-request>)))
  "Returns md5sum for a message object of type '<SetTrackedBundles-request>"
  "794fe4f70aaf8e75138989e78d87ef98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTrackedBundles-request)))
  "Returns md5sum for a message object of type 'SetTrackedBundles-request"
  "794fe4f70aaf8e75138989e78d87ef98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTrackedBundles-request>)))
  "Returns full string definition for message of type '<SetTrackedBundles-request>"
  (cl:format cl:nil "uint64[] tracked_bundle_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTrackedBundles-request)))
  "Returns full string definition for message of type 'SetTrackedBundles-request"
  (cl:format cl:nil "uint64[] tracked_bundle_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTrackedBundles-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tracked_bundle_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTrackedBundles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTrackedBundles-request
    (cl:cons ':tracked_bundle_ids (tracked_bundle_ids msg))
))
;//! \htmlinclude SetTrackedBundles-response.msg.html

(cl:defclass <SetTrackedBundles-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetTrackedBundles-response (<SetTrackedBundles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTrackedBundles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTrackedBundles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stag_ros-srv:<SetTrackedBundles-response> is deprecated: use stag_ros-srv:SetTrackedBundles-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetTrackedBundles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stag_ros-srv:success-val is deprecated.  Use stag_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTrackedBundles-response>) ostream)
  "Serializes a message object of type '<SetTrackedBundles-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTrackedBundles-response>) istream)
  "Deserializes a message object of type '<SetTrackedBundles-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTrackedBundles-response>)))
  "Returns string type for a service object of type '<SetTrackedBundles-response>"
  "stag_ros/SetTrackedBundlesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTrackedBundles-response)))
  "Returns string type for a service object of type 'SetTrackedBundles-response"
  "stag_ros/SetTrackedBundlesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTrackedBundles-response>)))
  "Returns md5sum for a message object of type '<SetTrackedBundles-response>"
  "794fe4f70aaf8e75138989e78d87ef98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTrackedBundles-response)))
  "Returns md5sum for a message object of type 'SetTrackedBundles-response"
  "794fe4f70aaf8e75138989e78d87ef98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTrackedBundles-response>)))
  "Returns full string definition for message of type '<SetTrackedBundles-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTrackedBundles-response)))
  "Returns full string definition for message of type 'SetTrackedBundles-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTrackedBundles-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTrackedBundles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTrackedBundles-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTrackedBundles)))
  'SetTrackedBundles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTrackedBundles)))
  'SetTrackedBundles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTrackedBundles)))
  "Returns string type for a service object of type '<SetTrackedBundles>"
  "stag_ros/SetTrackedBundles")