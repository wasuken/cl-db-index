(defsystem "cl-db-index"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ("mylib")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "cl-db-index/tests"))))

(defsystem "cl-db-index/tests"
  :author ""
  :license ""
  :depends-on ("cl-db-index"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for cl-db-index"
  :perform (test-op (op c) (symbol-call :rove :run c)))
