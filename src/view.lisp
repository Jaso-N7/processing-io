(in-package :view)

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
