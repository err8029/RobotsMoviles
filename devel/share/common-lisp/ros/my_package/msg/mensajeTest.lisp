; Auto-generated. Do not edit!


(cl:in-package my_package-msg)


;//! \htmlinclude mensajeTest.msg.html

(cl:defclass <mensajeTest> (roslisp-msg-protocol:ros-message)
  ((palabra
    :reader palabra
    :initarg :palabra
    :type cl:string
    :initform ""))
)

(cl:defclass mensajeTest (<mensajeTest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mensajeTest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mensajeTest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_package-msg:<mensajeTest> is deprecated: use my_package-msg:mensajeTest instead.")))

(cl:ensure-generic-function 'palabra-val :lambda-list '(m))
(cl:defmethod palabra-val ((m <mensajeTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-msg:palabra-val is deprecated.  Use my_package-msg:palabra instead.")
  (palabra m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mensajeTest>) ostream)
  "Serializes a message object of type '<mensajeTest>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'palabra))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'palabra))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mensajeTest>) istream)
  "Deserializes a message object of type '<mensajeTest>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'palabra) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'palabra) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mensajeTest>)))
  "Returns string type for a message object of type '<mensajeTest>"
  "my_package/mensajeTest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mensajeTest)))
  "Returns string type for a message object of type 'mensajeTest"
  "my_package/mensajeTest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mensajeTest>)))
  "Returns md5sum for a message object of type '<mensajeTest>"
  "03b75dcc444598b70de1a710d2e07df8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mensajeTest)))
  "Returns md5sum for a message object of type 'mensajeTest"
  "03b75dcc444598b70de1a710d2e07df8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mensajeTest>)))
  "Returns full string definition for message of type '<mensajeTest>"
  (cl:format cl:nil "string palabra~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mensajeTest)))
  "Returns full string definition for message of type 'mensajeTest"
  (cl:format cl:nil "string palabra~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mensajeTest>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'palabra))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mensajeTest>))
  "Converts a ROS message object to a list"
  (cl:list 'mensajeTest
    (cl:cons ':palabra (palabra msg))
))
