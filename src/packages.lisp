(defpackage model
  (:documentation "Processes all information.")
  (:use :cl)
  (:export #:process-greeting
	   #:process-input-string
	   #:is-number-p
	   #:numbers-minus-p
	   #:add #:sub #:mul #:div))


(defpackage view
  (:documentation "Handles all the user interfaces and actions.")
  (:use :cl)
  (:export #:display-prompt
	   #:display-response
	   #:get-quote-and-author))


(defpackage processing-io
  (:documentation "Entry point for application. Displays the Views and handle events.")
  (:use :cl)
  (:import-from :model
		#:process-greeting
		#:process-input-string
		#:is-number-p
		#:numbers-minus-p
		#:add #:sub #:mul #:div)
  (:import-from :view
		#:display-prompt
		#:display-response
		#:get-quote-and-author)
  (:export #:saying-hello
	   #:counting-chars
	   #:run-count-chars
	   #:printing-quotes
	   #:madlib
	   #:simple-math
	   #:run-simple-maths))
