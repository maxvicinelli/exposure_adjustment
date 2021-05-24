;; Auto-generated. Do not edit!


(when (boundp 'droplet_underwater_assembly::BuildPhase)
  (if (not (find-package "DROPLET_UNDERWATER_ASSEMBLY"))
    (make-package "DROPLET_UNDERWATER_ASSEMBLY"))
  (shadow 'BuildPhase (find-package "DROPLET_UNDERWATER_ASSEMBLY")))
(unless (find-package "DROPLET_UNDERWATER_ASSEMBLY::BUILDPHASE")
  (make-package "DROPLET_UNDERWATER_ASSEMBLY::BUILDPHASE"))

(in-package "ROS")
;;//! \htmlinclude BuildPhase.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass droplet_underwater_assembly::BuildPhase
  :super ros::object
  :slots (_header _current_action _active_build_step _switched_this_frame _current_action_is_started _current_action_type _current_location _goal_location _move_tolerance _action_sequence_id ))

(defmethod droplet_underwater_assembly::BuildPhase
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:current_action __current_action) "")
    ((:active_build_step __active_build_step) "")
    ((:switched_this_frame __switched_this_frame) nil)
    ((:current_action_is_started __current_action_is_started) nil)
    ((:current_action_type __current_action_type) "")
    ((:current_location __current_location) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:goal_location __goal_location) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:move_tolerance __move_tolerance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:action_sequence_id __action_sequence_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _current_action (string __current_action))
   (setq _active_build_step (string __active_build_step))
   (setq _switched_this_frame __switched_this_frame)
   (setq _current_action_is_started __current_action_is_started)
   (setq _current_action_type (string __current_action_type))
   (setq _current_location __current_location)
   (setq _goal_location __goal_location)
   (setq _move_tolerance __move_tolerance)
   (setq _action_sequence_id (round __action_sequence_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:current_action
   (&optional __current_action)
   (if __current_action (setq _current_action __current_action)) _current_action)
  (:active_build_step
   (&optional __active_build_step)
   (if __active_build_step (setq _active_build_step __active_build_step)) _active_build_step)
  (:switched_this_frame
   (&optional __switched_this_frame)
   (if __switched_this_frame (setq _switched_this_frame __switched_this_frame)) _switched_this_frame)
  (:current_action_is_started
   (&optional __current_action_is_started)
   (if __current_action_is_started (setq _current_action_is_started __current_action_is_started)) _current_action_is_started)
  (:current_action_type
   (&optional __current_action_type)
   (if __current_action_type (setq _current_action_type __current_action_type)) _current_action_type)
  (:current_location
   (&optional __current_location)
   (if __current_location (setq _current_location __current_location)) _current_location)
  (:goal_location
   (&optional __goal_location)
   (if __goal_location (setq _goal_location __goal_location)) _goal_location)
  (:move_tolerance
   (&optional __move_tolerance)
   (if __move_tolerance (setq _move_tolerance __move_tolerance)) _move_tolerance)
  (:action_sequence_id
   (&optional __action_sequence_id)
   (if __action_sequence_id (setq _action_sequence_id __action_sequence_id)) _action_sequence_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _current_action
    4 (length _current_action)
    ;; string _active_build_step
    4 (length _active_build_step)
    ;; bool _switched_this_frame
    1
    ;; bool _current_action_is_started
    1
    ;; string _current_action_type
    4 (length _current_action_type)
    ;; float64[] _current_location
    (* 8    (length _current_location)) 4
    ;; float64[] _goal_location
    (* 8    (length _goal_location)) 4
    ;; float64[] _move_tolerance
    (* 8    (length _move_tolerance)) 4
    ;; int64 _action_sequence_id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _current_action
       (write-long (length _current_action) s) (princ _current_action s)
     ;; string _active_build_step
       (write-long (length _active_build_step) s) (princ _active_build_step s)
     ;; bool _switched_this_frame
       (if _switched_this_frame (write-byte -1 s) (write-byte 0 s))
     ;; bool _current_action_is_started
       (if _current_action_is_started (write-byte -1 s) (write-byte 0 s))
     ;; string _current_action_type
       (write-long (length _current_action_type) s) (princ _current_action_type s)
     ;; float64[] _current_location
     (write-long (length _current_location) s)
     (dotimes (i (length _current_location))
       (sys::poke (elt _current_location i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _goal_location
     (write-long (length _goal_location) s)
     (dotimes (i (length _goal_location))
       (sys::poke (elt _goal_location i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _move_tolerance
     (write-long (length _move_tolerance) s)
     (dotimes (i (length _move_tolerance))
       (sys::poke (elt _move_tolerance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int64 _action_sequence_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _action_sequence_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _action_sequence_id) (= (length (_action_sequence_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_action_sequence_id . bv) 0) 0) s)
              (write-long (ash (elt (_action_sequence_id . bv) 1) -1) s))
             ((and (class _action_sequence_id) (= (length (_action_sequence_id . bv)) 1)) ;; big1
              (write-long (elt (_action_sequence_id . bv) 0) s)
              (write-long (if (>= _action_sequence_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _action_sequence_id s)(write-long (if (>= _action_sequence_id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _current_action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _active_build_step
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _active_build_step (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _switched_this_frame
     (setq _switched_this_frame (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _current_action_is_started
     (setq _current_action_is_started (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _current_action_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_action_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _current_location
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_location (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _current_location i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _goal_location
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_location (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _goal_location i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _move_tolerance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _move_tolerance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _move_tolerance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int64 _action_sequence_id
#+(or :alpha :irix6 :x86_64)
      (setf _action_sequence_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _action_sequence_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get droplet_underwater_assembly::BuildPhase :md5sum-) "08e0913f890f71b7b557d1bae24caa5f")
(setf (get droplet_underwater_assembly::BuildPhase :datatype-) "droplet_underwater_assembly/BuildPhase")
(setf (get droplet_underwater_assembly::BuildPhase :definition-)
      "Header header
string current_action
string active_build_step
bool switched_this_frame
bool current_action_is_started
string current_action_type
float64[] current_location
float64[] goal_location
float64[] move_tolerance
int64 action_sequence_id

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

")



(provide :droplet_underwater_assembly/BuildPhase "08e0913f890f71b7b557d1bae24caa5f")


