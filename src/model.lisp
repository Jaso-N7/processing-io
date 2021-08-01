(in-package :model)

(defparameter *invalid-name-chars*
  '(#\, #\\))

(defun valid-name-p (name)
  "Tests whether NAME contains *INVALID-NAME-CHARS*. Returns T if NAME is valid;
Otherwise NIL."
  (every #'null 
	 (mapcar #'(lambda (inv)
		     (find inv name))
		 *invalid-name-chars*)))

(defun process-greeting (name)
  "Returns a greeting with the name included, if NAME is 'valid'; a message indicating
otherwise if NAME includes invalid characters."
  (if (valid-name-p name)
      (concatenate 'string "Hello, "
		   name
		   ", nice to meet you!")
      (concatenate 'string "Sorry, "
		   name
		   ", I don't think that is your actual name.")))

(defun process-input-string (str)
  "Determines the length of the input string STR."
  (length str))
