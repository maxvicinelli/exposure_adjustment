// Auto-generated. Do not edit!

// (in-package droplet_underwater_assembly.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BuildPhase {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.current_action = null;
      this.active_build_step = null;
      this.switched_this_frame = null;
      this.current_action_is_started = null;
      this.current_action_type = null;
      this.current_location = null;
      this.goal_location = null;
      this.move_tolerance = null;
      this.action_sequence_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('current_action')) {
        this.current_action = initObj.current_action
      }
      else {
        this.current_action = '';
      }
      if (initObj.hasOwnProperty('active_build_step')) {
        this.active_build_step = initObj.active_build_step
      }
      else {
        this.active_build_step = '';
      }
      if (initObj.hasOwnProperty('switched_this_frame')) {
        this.switched_this_frame = initObj.switched_this_frame
      }
      else {
        this.switched_this_frame = false;
      }
      if (initObj.hasOwnProperty('current_action_is_started')) {
        this.current_action_is_started = initObj.current_action_is_started
      }
      else {
        this.current_action_is_started = false;
      }
      if (initObj.hasOwnProperty('current_action_type')) {
        this.current_action_type = initObj.current_action_type
      }
      else {
        this.current_action_type = '';
      }
      if (initObj.hasOwnProperty('current_location')) {
        this.current_location = initObj.current_location
      }
      else {
        this.current_location = [];
      }
      if (initObj.hasOwnProperty('goal_location')) {
        this.goal_location = initObj.goal_location
      }
      else {
        this.goal_location = [];
      }
      if (initObj.hasOwnProperty('move_tolerance')) {
        this.move_tolerance = initObj.move_tolerance
      }
      else {
        this.move_tolerance = [];
      }
      if (initObj.hasOwnProperty('action_sequence_id')) {
        this.action_sequence_id = initObj.action_sequence_id
      }
      else {
        this.action_sequence_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BuildPhase
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [current_action]
    bufferOffset = _serializer.string(obj.current_action, buffer, bufferOffset);
    // Serialize message field [active_build_step]
    bufferOffset = _serializer.string(obj.active_build_step, buffer, bufferOffset);
    // Serialize message field [switched_this_frame]
    bufferOffset = _serializer.bool(obj.switched_this_frame, buffer, bufferOffset);
    // Serialize message field [current_action_is_started]
    bufferOffset = _serializer.bool(obj.current_action_is_started, buffer, bufferOffset);
    // Serialize message field [current_action_type]
    bufferOffset = _serializer.string(obj.current_action_type, buffer, bufferOffset);
    // Serialize message field [current_location]
    bufferOffset = _arraySerializer.float64(obj.current_location, buffer, bufferOffset, null);
    // Serialize message field [goal_location]
    bufferOffset = _arraySerializer.float64(obj.goal_location, buffer, bufferOffset, null);
    // Serialize message field [move_tolerance]
    bufferOffset = _arraySerializer.float64(obj.move_tolerance, buffer, bufferOffset, null);
    // Serialize message field [action_sequence_id]
    bufferOffset = _serializer.int64(obj.action_sequence_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BuildPhase
    let len;
    let data = new BuildPhase(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_action]
    data.current_action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [active_build_step]
    data.active_build_step = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [switched_this_frame]
    data.switched_this_frame = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [current_action_is_started]
    data.current_action_is_started = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [current_action_type]
    data.current_action_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_location]
    data.current_location = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [goal_location]
    data.goal_location = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [move_tolerance]
    data.move_tolerance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [action_sequence_id]
    data.action_sequence_id = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.current_action.length;
    length += object.active_build_step.length;
    length += object.current_action_type.length;
    length += 8 * object.current_location.length;
    length += 8 * object.goal_location.length;
    length += 8 * object.move_tolerance.length;
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'droplet_underwater_assembly/BuildPhase';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08e0913f890f71b7b557d1bae24caa5f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BuildPhase(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.current_action !== undefined) {
      resolved.current_action = msg.current_action;
    }
    else {
      resolved.current_action = ''
    }

    if (msg.active_build_step !== undefined) {
      resolved.active_build_step = msg.active_build_step;
    }
    else {
      resolved.active_build_step = ''
    }

    if (msg.switched_this_frame !== undefined) {
      resolved.switched_this_frame = msg.switched_this_frame;
    }
    else {
      resolved.switched_this_frame = false
    }

    if (msg.current_action_is_started !== undefined) {
      resolved.current_action_is_started = msg.current_action_is_started;
    }
    else {
      resolved.current_action_is_started = false
    }

    if (msg.current_action_type !== undefined) {
      resolved.current_action_type = msg.current_action_type;
    }
    else {
      resolved.current_action_type = ''
    }

    if (msg.current_location !== undefined) {
      resolved.current_location = msg.current_location;
    }
    else {
      resolved.current_location = []
    }

    if (msg.goal_location !== undefined) {
      resolved.goal_location = msg.goal_location;
    }
    else {
      resolved.goal_location = []
    }

    if (msg.move_tolerance !== undefined) {
      resolved.move_tolerance = msg.move_tolerance;
    }
    else {
      resolved.move_tolerance = []
    }

    if (msg.action_sequence_id !== undefined) {
      resolved.action_sequence_id = msg.action_sequence_id;
    }
    else {
      resolved.action_sequence_id = 0
    }

    return resolved;
    }
};

module.exports = BuildPhase;
