(defsystem "processing-io"
  :version "0.1.0"
  :author "Jason Robinson"
  :license "BSD-3"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "Getting acquainted with how to get input from the user and process it to produce output."
  :in-order-to ((test-op (test-op "processing-io/tests"))))

(defsystem "processing-io/tests"
  :author "Jason Robinson"
  :license "BSD-3"
  :depends-on ("processing-io"
               "cl-quickcheck")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for PROCESSING-IO"
  :perform (test-op (op c) (symbol-call :processing-io/tests/main :check!)))
