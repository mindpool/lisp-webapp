(in-package :cl-user)

(defpackage :webapp
  (:use :cl :asdf :webapp-config)
  (:export start stop))

(in-package :webapp)

(defsystem :webapp
  :depends-on (:hunchentoot :html-template :cl-who)
  :version "0.1"
  :serial t
  :components
  ((:file "global") ;;global variables and settings
   (:file "misc") ;;misc utility functions
   (:file "pages") ;;webpages
   (:file "control"))) ;;Starts the server (brings up hunchentoot)
