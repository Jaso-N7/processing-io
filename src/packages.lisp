(defpackage model
  (:use :cl)
  (:export #:process-greeting
	   #:process-input-string)
  (:documentation "Processes all information."))

(defpackage view
  (:use :cl)
  (:export #:get-name
	   #:greeting
	   #:get-input-string
	   #:set-output-string)
  (:documentation "Handles all the user interfaces and actions."))

(defpackage processing-io
  (:use :cl :model :view)
  (:export #:saying-hello
	   #:counting-chars)
  (:documentation "Entry point for application. Displays the Views and handle events."))
