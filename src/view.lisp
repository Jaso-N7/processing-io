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

(defun get-quote-and-author ()
  "Prompts for a quote and an author."
(format t "~&What is the quote? ")
  (let ((quote (read-line)))
    (format t "Who said it? ")
    (let ((author (read-line)))
      (values quote author))))

(defun display-quote (quote author)
  "Display the quotation and author."
  (format t "~A says, ~S"
	  author quote))
  
