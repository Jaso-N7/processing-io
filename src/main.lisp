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
	 (adv (display-prompt "Enter an adverb: "))
	 (subj (display-prompt "Enter the subject: "))
	 (pronoun (display-prompt "Enter a pronoun: ")))
    (display-response (format nil "Do(es) ~A ~A ~A ~A ~A ~A? That's hilarious!"
			      subj verb pronoun adj noun adv))))  

(defun simple-math ()
  (let* ((a-rand (is-number-p (display-prompt "What is the first number? ")))
	 (b-rand (is-number-p (display-prompt "What is the first number? "))))
    (cond ((zerop b-rand)
	   (format t "Second number MUST be greater than zero(0)~%")
	   (simple-math))
	  ((and a-rand b-rand)
	   (multiple-value-bind (add min mul div) (math-simplified a-rand b-rand)
	     (display-response 
	      (format nil "~A + ~A = ~A~%~A - ~A = ~A~%~A * ~A = ~A~%~A / ~A = ~A"
		      a-rand b-rand add
		      a-rand b-rand min
		      a-rand b-rand mul
		      a-rand b-rand div))))
	  (t (simple-math)))))

