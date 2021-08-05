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

(defun is-number-p (num)
  "Test if an input string NUM is a number, if it is, then converts it from string; Otherwise returns NIL."
  (cond ((string= "" num)
	 NIL)
	((and (char= (char num 0) #\-)
	      (every #'digit-char-p
		     (subseq num 1)))
	 (- (parse-integer (subseq num 1))))
	((every #'digit-char-p num)
	 (parse-integer num))
	(t NIL)))

;; This is more a utility function
(defun numbers-minus-p (&rest numbers)
  "Returns T if any number NUMBERS are zero or negative; Otherwise NIL."
  (some #'(lambda (number)
	    (<= number 0))
	numbers))

(defun add (a b) (+ a b))
(defun sub (a b) (- a b))
(defun mul (a b) (* a b))
(defun div (a b) (/ a b))
