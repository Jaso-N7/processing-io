
(in-package :processing-io)

(defun count-chars ()
  "Prompt for an input string and displays output that shows the input string
and the number of characters the string contains."
  (iup:with-iup ()
    (let* ((counter (iup:label :title 0))
	   (label (iup:label :title (format nil "What is the input string?")))
	   (input (iup:text :value ""))
	   (counter-label (iup:label :title (format nil "~A has ~A characters."
						    (iup:attribute input :value)
						    (iup:attribute counter :title))))
	   (button (iup:button :title "Count Chars"
			       :expand :yes
			       :tip "Click to count characters from input"
			       :action (lambda (handle)
					 (declare (ignorable handle))
					 (setf (iup:attribute counter :title)
					       (process-input-string (iup:attribute input :value)))
					 (setf (iup:attribute counter-label :title)
					       (format nil "~A has ~A characters."
						    (iup:attribute input :value)
						    (iup:attribute counter :title)))
					 iup:+default+)))
	   (vbox (iup:vbox (list label input counter-label button)
			   :gap "10"
			   :margin "10x10"
			   :alignment :acenter))
	   (dialog (iup:dialog vbox :title "Character Counter")))
      (iup:show dialog)
      (iup:main-loop))))	      

(defun make-calculate-action (in-a in-b out)
  "Supporting function for `simple-calc'. Adds the action to the specified inputs IN-A, IN-B
and label OUT."
  (lambda (handle)
    (declare (ignore handle))
    (let ((a (is-number-p (iup:attribute in-a :value 'string)))
	  (b (is-number-p (iup:attribute in-b :value 'string))))
      (cond ((or (null a)
		 (null b))
 	     (iup:attribute out :title "Both fields MUST contain positive integers."))
	    ((numbers-minus-p a b)
	     (iup:attribute out :title "Numbers MUST be greater than zero(0)"))
	    (t
	     (let ((output (format nil
				   "~A + ~A = ~A~%~A - ~A = ~A~%~A * ~A = ~A~%~A / ~A = ~A"
				   a b (add a b) 
				   a b (sub a b) 
				   a b (mul a b) 
				   a b (div a b))))
	       (setf (iup:attribute out :title) output))))
      (iup:refresh out))
    iup:+default+))

(defun simple-calc ()
  "Prompts for two numbers and prints the sum, difference, product and quotient of those
numbers."
  (iup:with-iup ()
    (let* ((label-sum (iup:label :title "Awaiting positive numbers."))
	   (label-a (iup:label :title "&First Number:"))
	   (label-b (iup:label :title "&Second Number:"))
	   (input-a (iup:text :value ""))
	   (input-b (iup:text :value ""))
	   (vbox (iup:vbox (list label-a input-a
				 label-b input-b
				 label-sum)
			   :gap "10"
			   :margin "30x60"
			   :alignment :aleft))
	   (dialog (iup:dialog vbox :title "Simple Mathematics")))
      (loop :with action := (make-calculate-action input-a input-b label-sum)
	    :for handle :in (list input-a input-b)
	    :do (setf (iup:callback handle :valuechanged_cb)
		      action))
      (iup:show dialog)
      (iup:main-loop))))
