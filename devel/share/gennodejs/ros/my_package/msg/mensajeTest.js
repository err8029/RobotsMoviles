// Auto-generated. Do not edit!

// (in-package my_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class mensajeTest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.palabra = null;
    }
    else {
      if (initObj.hasOwnProperty('palabra')) {
        this.palabra = initObj.palabra
      }
      else {
        this.palabra = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mensajeTest
    // Serialize message field [palabra]
    bufferOffset = _serializer.string(obj.palabra, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mensajeTest
    let len;
    let data = new mensajeTest(null);
    // Deserialize message field [palabra]
    data.palabra = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.palabra.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_package/mensajeTest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03b75dcc444598b70de1a710d2e07df8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string palabra
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mensajeTest(null);
    if (msg.palabra !== undefined) {
      resolved.palabra = msg.palabra;
    }
    else {
      resolved.palabra = ''
    }

    return resolved;
    }
};

module.exports = mensajeTest;
