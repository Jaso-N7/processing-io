(in-package :view)

(defun display-prompt (message)
  "Displays any prompts or questions in the form of MESSAGE and awaits user-input.
Returns the user-input in the form of a string once the Enter/Return key is pressed."
  (princ message)
  (read-line))

(defun display-response (message)
  "Displays the outcome or response in the form of MESSAGE to the user."
  (progn
    (princ message)
    'end))

(defun get-quote-and-author ()
  "Prompts for a quote and an author."
  (let* ((quote (display-prompt "What is the quote? "))
	 (author (display-prompt "Who said it? ")))
    (values quote author)))
  
