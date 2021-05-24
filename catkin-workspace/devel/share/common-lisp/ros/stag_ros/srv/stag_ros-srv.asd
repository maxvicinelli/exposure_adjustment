
(cl:in-package :asdf)

(defsystem "stag_ros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetTrackedBundles" :depends-on ("_package_SetTrackedBundles"))
    (:file "_package_SetTrackedBundles" :depends-on ("_package"))
  ))