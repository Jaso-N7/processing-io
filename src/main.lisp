(defpackage processing-io
  (:use :cl)
  (:export :saying-hello
	   :counting-chars))

(in-package :processing-io)

;;; MODEL

(defun process-greeting (name)
  "Returns NAME if the NAME is a STRING; Otherwise NIL."
  (concatenate 'string "Hello, "
	       name
	       ", nice to meet you!"))

(defun process-input-string (str)
  "Determines the length of the input string STR."
  (length str))

;;; VIEW

(defun get-name ()
  (format t "~&What is your name? ")
  (read-line))

(defun greeting (greet)
  "Displays a greeting GREET."
  (format nil "~A" greet))

(defun get-input-string ()
  (format t "~&What is the input string? ")
  (read-line))

(defun set-output-string (str str-len)
  (format nil "~A has ~A characters."
	  str str-len))

;;; CONTROLLER

(defun saying-hello ()
  "Prompts a user for their name and displays a greeting."
  (greeting (process-greeting (get-name))))

(defun counting-chars ()
  (let* ((in-str (get-input-string))
	 (len (process-input-string in-str)))
    (if (plusp len)
	(set-output-string in-str len)
	(progn 
	  (format t "You must enter something~%")
	  (counting-chars)))))
