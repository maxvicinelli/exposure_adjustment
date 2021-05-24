
(cl:in-package :asdf)

(defsystem "stag_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "StagMarker" :depends-on ("_package_StagMarker"))
    (:file "_package_StagMarker" :depends-on ("_package"))
    (:file "StagMarkers" :depends-on ("_package_StagMarkers"))
    (:file "_package_StagMarkers" :depends-on ("_package"))
  ))