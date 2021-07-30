(defsystem "PROCESSING-IO"
  :version "0.1.0"
  :author "Jason Robinson"
  :license "BSD-3"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "Getting acquainted with how to get inpot from the user and process it to produce output."
  :in-order-to ((test-op (test-op "PROCESSING-IO/tests"))))

(defsystem "PROCESSING-IO/tests"
  :author "Jason Robinson"
  :license "BSD-3"
  :depends-on ("PROCESSING-IO"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for PROCESSING-IO"
  :perform (test-op (op c) (symbol-call :rove :run c)))
