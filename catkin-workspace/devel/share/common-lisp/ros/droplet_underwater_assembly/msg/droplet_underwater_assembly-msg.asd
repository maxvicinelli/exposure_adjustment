
(cl:in-package :asdf)

(defsystem "droplet_underwater_assembly-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BuildPhase" :depends-on ("_package_BuildPhase"))
    (:file "_package_BuildPhase" :depends-on ("_package"))
  ))