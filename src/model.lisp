(in-package :model)

(defun process-greeting (name)
  "Returns NAME if the NAME is a STRING; Otherwise NIL."
  (concatenate 'string "Hello, "
	       name
	       ", nice to meet you!"))

(defun process-input-string (str)
  "Determines the length of the input string STR."
  (length str))
