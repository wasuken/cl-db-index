(defpackage cl-db-index/tests/main
  (:use :cl
        :cl-db-index
        :rove))
(in-package :cl-db-index/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-db-index)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
