// Auto-generated. Do not edit!

// (in-package stag_ros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetTrackedBundlesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tracked_bundle_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('tracked_bundle_ids')) {
        this.tracked_bundle_ids = initObj.tracked_bundle_ids
      }
      else {
        this.tracked_bundle_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTrackedBundlesRequest
    // Serialize message field [tracked_bundle_ids]
    bufferOffset = _arraySerializer.uint64(obj.tracked_bundle_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTrackedBundlesRequest
    let len;
    let data = new SetTrackedBundlesRequest(null);
    // Deserialize message field [tracked_bundle_ids]
    data.tracked_bundle_ids = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.tracked_bundle_ids.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'stag_ros/SetTrackedBundlesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b15701cb380ce0373ed8774b1621b224';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64[] tracked_bundle_ids
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTrackedBundlesRequest(null);
    if (msg.tracked_bundle_ids !== undefined) {
      resolved.tracked_bundle_ids = msg.tracked_bundle_ids;
    }
    else {
      resolved.tracked_bundle_ids = []
    }

    return resolved;
    }
};

class SetTrackedBundlesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTrackedBundlesResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTrackedBundlesResponse
    let len;
    let data = new SetTrackedBundlesResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'stag_ros/SetTrackedBundlesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTrackedBundlesResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetTrackedBundlesRequest,
  Response: SetTrackedBundlesResponse,
  md5sum() { return '794fe4f70aaf8e75138989e78d87ef98'; },
  datatype() { return 'stag_ros/SetTrackedBundles'; }
};
