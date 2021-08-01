(defpackage processing-io/tests/main
  (:use :cl
        :model
        :cl-quickcheck)
  (:export #:check!)
  (:documentation "Stateless property-based testing of the MODEL."))


(in-package :processing-io/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :PROCESSING-IO)' in your Lisp.

(defun check! ()
  "Run all the tests."
  (quickcheck
   (saying-hello-tests)))

(defun saying-hello-tests ()

  (named "Saying Hello - Regression"
    (is= "Hello, Brian, nice to meet you!"
	 (model:process-greeting "Brian"))
    (is= "Sorry, Gar,ba\ge, I don't think that is your actual name."
	 (model:process-greeting "Gar,ba\ge")))

  )

(defun counting-chars-tests ()
  (error "Not yet implemented"))
		    
