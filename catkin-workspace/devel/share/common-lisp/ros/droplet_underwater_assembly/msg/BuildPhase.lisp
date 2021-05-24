; Auto-generated. Do not edit!


(cl:in-package droplet_underwater_assembly-msg)


;//! \htmlinclude BuildPhase.msg.html

(cl:defclass <BuildPhase> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (current_action
    :reader current_action
    :initarg :current_action
    :type cl:string
    :initform "")
   (active_build_step
    :reader active_build_step
    :initarg :active_build_step
    :type cl:string
    :initform "")
   (switched_this_frame
    :reader switched_this_frame
    :initarg :switched_this_frame
    :type cl:boolean
    :initform cl:nil)
   (current_action_is_started
    :reader current_action_is_started
    :initarg :current_action_is_started
    :type cl:boolean
    :initform cl:nil)
   (current_action_type
    :reader current_action_type
    :initarg :current_action_type
    :type cl:string
    :initform "")
   (current_location
    :reader current_location
    :initarg :current_location
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (goal_location
    :reader goal_location
    :initarg :goal_location
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (move_tolerance
    :reader move_tolerance
    :initarg :move_tolerance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (action_sequence_id
    :reader action_sequence_id
    :initarg :action_sequence_id
    :type cl:integer
    :initform 0))
)

(cl:defclass BuildPhase (<BuildPhase>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BuildPhase>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BuildPhase)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name droplet_underwater_assembly-msg:<BuildPhase> is deprecated: use droplet_underwater_assembly-msg:BuildPhase instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BuildPhase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader droplet_underwater_assembly-msg:header-val is deprecated.  Use droplet_underwater_assembly-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'current_action-val :lambda-list '(m))
(cl:defmethod current_action-val ((m <BuildPhase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader droplet_underwater_assembly-msg:current_action-val is deprecated.  Use droplet_underwater_assembly-msg:current_action instead.")
  (current_action m))

(cl:ensure-generic-function 'active_build_step-val :lambda-list '(m))
(cl:defmethod active_build_step-val ((m <BuildPhase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader droplet_underwater_assembly-msg:active_build_step-val is deprecated.  Use droplet_underwater_assembly-msg:active_build_step instead.")
  (active_build_step m))

(cl:ensure-generic-function 'switched_this_frame-val :lambda-list '(m))
(cl:defmethod switched_this_frame-val ((m <BuildPhase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader droplet_underwater_assembly-msg:switched_this_frame-val is deprecated.  Use droplet_underwater_assembly-msg:switched_this_frame instead.")
  (switched_this_frame m))

(cl:ensure-generic-function 'current_action_is_started-val :lambda-list '(m))
(cl:defmethod current_action_is_started-val ((m <BuildPhase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader droplet_underwater_assembly-msg:current_action_is_started-val is deprecated.  Use droplet_underwater_assembly-msg:current_action_is_started instead.")
  (current_action_is_started m))

(cl:ensure-generic-function 'current_action_type-val :lambda-list '(m))
(cl:defmethod current_action_type-val ((m <BuildPhase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader droplet_underwater_assembly-msg:current_action_type-val is deprecated.  Use droplet_underwater_assembly-msg:current_action_type instead.")
  (current_action_type m))

(cl:ensure-generic-function 'current_location-val :lambda-list '(m))
(cl:defmethod current_location-val ((m <BuildPhase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader droplet_underwater_assembly-msg:current_location-val is deprecated.  Use droplet_underwater_assembly-msg:current_location instead.")
  (current_location m))

(cl:ensure-generic-function 'goal_location-val :lambda-list '(m))
(cl:defmethod goal_location-val ((m <BuildPhase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader droplet_underwater_assembly-msg:goal_location-val is deprecated.  Use droplet_underwater_assembly-msg:goal_location instead.")
  (goal_location m))

(cl:ensure-generic-function 'move_tolerance-val :lambda-list '(m))
(cl:defmethod move_tolerance-val ((m <BuildPhase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader droplet_underwater_assembly-msg:move_tolerance-val is deprecated.  Use droplet_underwater_assembly-msg:move_tolerance instead.")
  (move_tolerance m))

(cl:ensure-generic-function 'action_sequence_id-val :lambda-list '(m))
(cl:defmethod action_sequence_id-val ((m <BuildPhase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader droplet_underwater_assembly-msg:action_sequence_id-val is deprecated.  Use droplet_underwater_assembly-msg:action_sequence_id instead.")
  (action_sequence_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BuildPhase>) ostream)
  "Serializes a message object of type '<BuildPhase>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_action))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'active_build_step))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'active_build_step))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'switched_this_frame) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'current_action_is_started) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_action_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_action_type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'current_location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'current_location))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'goal_location))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'move_tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'move_tolerance))
  (cl:let* ((signed (cl:slot-value msg 'action_sequence_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BuildPhase>) istream)
  "Deserializes a message object of type '<BuildPhase>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'active_build_step) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'active_build_step) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'switched_this_frame) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'current_action_is_started) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_action_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_action_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'current_location) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'current_location)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal_location) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_location)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'move_tolerance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'move_tolerance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_sequence_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BuildPhase>)))
  "Returns string type for a message object of type '<BuildPhase>"
  "droplet_underwater_assembly/BuildPhase")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuildPhase)))
  "Returns string type for a message object of type 'BuildPhase"
  "droplet_underwater_assembly/BuildPhase")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BuildPhase>)))
  "Returns md5sum for a message object of type '<BuildPhase>"
  "08e0913f890f71b7b557d1bae24caa5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BuildPhase)))
  "Returns md5sum for a message object of type 'BuildPhase"
  "08e0913f890f71b7b557d1bae24caa5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BuildPhase>)))
  "Returns full string definition for message of type '<BuildPhase>"
  (cl:format cl:nil "Header header~%string current_action~%string active_build_step~%bool switched_this_frame~%bool current_action_is_started~%string current_action_type~%float64[] current_location~%float64[] goal_location~%float64[] move_tolerance~%int64 action_sequence_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BuildPhase)))
  "Returns full string definition for message of type 'BuildPhase"
  (cl:format cl:nil "Header header~%string current_action~%string active_build_step~%bool switched_this_frame~%bool current_action_is_started~%string current_action_type~%float64[] current_location~%float64[] goal_location~%float64[] move_tolerance~%int64 action_sequence_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BuildPhase>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'current_action))
     4 (cl:length (cl:slot-value msg 'active_build_step))
     1
     1
     4 (cl:length (cl:slot-value msg 'current_action_type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'current_location) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_location) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'move_tolerance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BuildPhase>))
  "Converts a ROS message object to a list"
  (cl:list 'BuildPhase
    (cl:cons ':header (header msg))
    (cl:cons ':current_action (current_action msg))
    (cl:cons ':active_build_step (active_build_step msg))
    (cl:cons ':switched_this_frame (switched_this_frame msg))
    (cl:cons ':current_action_is_started (current_action_is_started msg))
    (cl:cons ':current_action_type (current_action_type msg))
    (cl:cons ':current_location (current_location msg))
    (cl:cons ':goal_location (goal_location msg))
    (cl:cons ':move_tolerance (move_tolerance msg))
    (cl:cons ':action_sequence_id (action_sequence_id msg))
))
