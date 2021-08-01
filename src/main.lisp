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
