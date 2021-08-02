
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

(defun run-count-chars ()
  "Main entry point to start the GUI."
  #-sbcl
  (count-chars)
  #+sbcl
  (sb-int:with-float-traps-masked
      (:divide-by-zero :invalid)
    (count-chars)))
      
