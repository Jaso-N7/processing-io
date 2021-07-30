(defpackage PROCESSING-IO/tests/main
  (:use :cl
        :PROCESSING-IO
        :rove))
(in-package :PROCESSING-IO/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :PROCESSING-IO)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
