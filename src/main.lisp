(defpackage cl-db-index
  (:use :cl))
(in-package :cl-db-index)

(defun delete-first (v lst &optional (test #'eq))
  (cond ((null lst) nil)
		((funcall test v (car lst))
		 (cdr lst))
		(t (append `(,(car lst)) (delete-first v (cdr lst) test)))))

;;; 厳密にはmedianではない。
;;; リストのサイズが奇数の場合は二つの中央値の平均を算出する処理を省いてる。
(defun median (lst)
  (let ((len (length lst)))
	(nth (floor (/ len 2)) (sort lst #'<))))

(defstruct pair
  (value)
  (key))

(defstruct node
  (children '() :type list)
  (values '() :type list))

(defun search (node v))

(defun delete (node v))

(defun add (node v &key (balance? nil))
  (setf (slot-value node 'values)
		(sort (append (slot-value node 'values) `(,v)) #'<))
  (when balance?
	  (balance node)))

;;; 一からつくりなおすやつ。
;;; 一定数の追加を検知したら行うみたいなやつでいいとおもってる。
(defun balance (node))
