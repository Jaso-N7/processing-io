(defpackage processing-io
  (:use :cl)
  (:export :saying-hello))

(in-package :processing-io)

;;; MODEL

(defun process-greeting (name)
  "Returns NAME if the NAME is a STRING; Otherwise NIL."
  (concatenate 'string "Hello, "
	       name
	       ", nice to meet you!"))

;;; VIEW

(defun get-name ()
  (format t "~&What is your name? ")
  (read-line))

(defun greeting (greet)
  "Displays a greeting GREET."
  (format nil "~A" greet))

;;; CONTROLLER

(defun saying-hello ()
  "Prompts a user for their name and displays a greeting."
  (greeting (process-greeting (get-name))))




