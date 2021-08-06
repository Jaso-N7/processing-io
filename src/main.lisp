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

(defun run-count-chars ()
  "Main entry point to start the GUI version of `COUNTING-CHARS'."
  #-sbcl
  (count-chars)
  #+sbcl
  (sb-int:with-float-traps-masked
      (:divide-by-zero :invalid)
    (count-chars)))

(defun printing-quotes ()
  "Prompts for a quote and an author, then displays the quotation and author."
  (multiple-value-bind (q a) (get-quote-and-author)
    (display-response (format nil "~A says, ~S" a q))))

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
	 (b-rand (is-number-p (display-prompt "What is the second number? "))))
    (cond ((or (null a-rand) (null b-rand))
	   (format t "Positive numbers required.~%")
	   (simple-math))
	  ((numbers-minus-p a-rand b-rand)
	   (format t "Numbers MUST be greater than zero(0)~%")
	   (simple-math))
	  ((and a-rand b-rand)
	   (display-response 
	    (format nil "~A + ~A = ~A~%~A - ~A = ~A~%~A * ~A = ~A~%~A / ~A = ~A"
		    a-rand b-rand (add a-rand b-rand) 
		    a-rand b-rand (sub a-rand b-rand) 
		    a-rand b-rand (mul a-rand b-rand) 
		    a-rand b-rand (div a-rand b-rand))))
	  (t (simple-math)))))

(defun run-simple-maths ()
  "Starts the GUI program for doing simple mathematics."
  #-sbcl
  (simple-calc)
  #+sbcl
  (sb-int:with-float-traps-masked
      (:divide-by-zero :invalid)
    (mixer)))

(defun retirement-calculator ()
  "Determines how many years you have left until retirement and the year you can retire.
Prompts for your current age and the age you want to retire and display the output."
  (let* ((current-age (is-number-p (display-prompt "What is your current age? ")))
	 (retirement-age (is-number-p (display-prompt 
				       "At what age would you like to retire? "))))
    (cond ((or (null current-age)
	       (null retirement-age)
	       (numbers-minus-p current-age retirement-age))
	   (format t "Please enter valid ages.")
	   (retirement-calculator))
	  ((and current-age retirement-age)
	   (let* ((current-year 0)
		  (years-to-retire 0)
		  (retirement-year 0))
	     (cond ((minusp years-to-retire)
		    (display-response "You can already retire."))
		   ((zerop years-to-retire)
		    (display-response "Get ready for retirement!"))
		   (t
		    (display-response
		     (format nil
			     "~&You have ~A years left until you can retire.~%It's ~A, so you can retire in ~A.~%"
			     years-to-retire current-year retirement-year))))))
	  (t (retirement-calculator)))))
			     
		    
