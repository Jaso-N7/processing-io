(in-package :processing-io)


(defun saying-hello ()
  "Prompts a user for their name and displays a greeting."
					;  (greeting (process-greeting (get-name))))
  (display-response
   (process-greeting
    (display-prompt "What is your name? "))))
		     
(defun counting-chars ()
  (let* ((in-str (display-prompt "What is the input string? "))
	 (len (process-input-string in-str)))
    (if (plusp len)
	(display-response (format nil "~A has ~A characters."
				  in-str len))
	(progn
	  (display-response "You must enter something")
	  (terpri)
	  (counting-chars)))))

(defun printing-quotes ()
  "Prompts for a quote and an author, then displays the quotation and author."
  (multiple-value-bind (q a) (get-quote-and-author)
    (display-response (concatenate 'string q " says, " a))))
