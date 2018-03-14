
(cl:in-package :asdf)

(defsystem "my_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mensajeTest" :depends-on ("_package_mensajeTest"))
    (:file "_package_mensajeTest" :depends-on ("_package"))
  ))