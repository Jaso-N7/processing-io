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
    (display-response (concatenate 'string a " says, " q))))

(defun madlib ()
  "A simple game where you, or another player, construct a list of words and
places them into the story (template), creating an often silly or funny story
as a result."
  (let* ((noun (display-prompt "Enter a noun: "))
	 (verb (display-prompt "Enter a verb: "))
	 (adj (display-prompt "Enter an adjective: "))
	 (adv (display-prompt "Enter an adverb: ")))
    (display-response (format nil "Do you ~A your ~A ~A ~A? That's hilarious!"
			      verb adj noun adv))))
