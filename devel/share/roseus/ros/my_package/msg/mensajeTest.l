;; Auto-generated. Do not edit!


(when (boundp 'my_package::mensajeTest)
  (if (not (find-package "MY_PACKAGE"))
    (make-package "MY_PACKAGE"))
  (shadow 'mensajeTest (find-package "MY_PACKAGE")))
(unless (find-package "MY_PACKAGE::MENSAJETEST")
  (make-package "MY_PACKAGE::MENSAJETEST"))

(in-package "ROS")
;;//! \htmlinclude mensajeTest.msg.html


(defclass my_package::mensajeTest
  :super ros::object
  :slots (_palabra ))

(defmethod my_package::mensajeTest
  (:init
   (&key
    ((:palabra __palabra) "")
    )
   (send-super :init)
   (setq _palabra (string __palabra))
   self)
  (:palabra
   (&optional __palabra)
   (if __palabra (setq _palabra __palabra)) _palabra)
  (:serialization-length
   ()
   (+
    ;; string _palabra
    4 (length _palabra)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _palabra
       (write-long (length _palabra) s) (princ _palabra s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _palabra
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _palabra (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get my_package::mensajeTest :md5sum-) "03b75dcc444598b70de1a710d2e07df8")
(setf (get my_package::mensajeTest :datatype-) "my_package/mensajeTest")
(setf (get my_package::mensajeTest :definition-)
      "string palabra

")



(provide :my_package/mensajeTest "03b75dcc444598b70de1a710d2e07df8")


