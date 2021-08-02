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
	   #:set-output-string
	   #:get-quote-and-author
	   #:display-quote)
  (:documentation "Handles all the user interfaces and actions."))

(defpackage processing-io
  (:use :cl)
  (:import-from :model
		#:process-greeting
		#:process-input-string)
  (:import-from :view
		#:get-name
		#:greeting
		#:get-input-string
		#:set-output-string
		#:get-quote-and-author
		#:display-quote)
  (:export #:saying-hello
	   #:counting-chars
	   #:run-count-chars
	   #:printing-quotes)
  (:documentation "Entry point for application. Displays the Views and handle events."))
