(defpackage processing-io/tests/main
  (:use :cl
        :PROCESSING-IO
        :cl-quickcheck)
  (:export :check!))

(in-package :processing-io/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :PROCESSING-IO)' in your Lisp.

(defun check! ()
  "Run all the tests."
  (quickcheck
   (saying-hello-tests)))

(defun saying-hello-tests ()

  (named "Saying Hello - Regression"
    (is= "Hello, Brian, nice to meet you!"
	 (processing-io::process-greeting "Brian")))
    

  (named "Saying Hello - Name always appears (unchanged) in greetings."
    (for-all ((rando #'a-string))
      (let* ((greetings (processing-io::process-greeting rando))
	     (start (position #\SPACE greetings))
	     (end (position #\, greetings :start start)))
	(is= rando (subseq greetings start end)))))


  )
		    
