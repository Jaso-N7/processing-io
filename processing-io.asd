(defsystem "processing-io"
  :version "0.5.4"
  :author "Jason Robinson"
  :license "BSD-3"
  :depends-on ("tecgraf-base" "pffft" "iup")
  :components ((:module "src"
                :components
                ((:file "packages")
		 (:file "model" :depends-on ("packages"))
		 (:file "view" :depends-on ("packages"))
		 (:file "main" :depends-on ("packages" "model" "view" "view-ui"))
		 (:file "view-ui" :depends-on ("packages")))))
  :description "Getting acquainted with how to get input from the user and process it to produce output."
  :in-order-to ((test-op (test-op "processing-io/tests"))))

(defsystem "processing-io/tests"
  :author "Jason Robinson"
  :license "BSD-3"
  :depends-on ("processing-io"
               "cl-quickcheck")
  :components ((:module "tests"
                :components
                ((:file "model-test"))))
  :description "Test system for PROCESSING-IO"
  :perform (test-op (op c) (symbol-call :processing-io/tests/main :check!)))
