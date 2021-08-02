(in-package :processing-io)


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

(defun printing-quotes ()
  "Prompts for a quote and an author, then displays the quotation and author."
  (multiple-value-bind (q a) (get-quote-and-author)
    (display-quote q a)))
