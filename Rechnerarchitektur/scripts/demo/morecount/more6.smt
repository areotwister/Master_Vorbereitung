(set-logic QF_BV)

(define-sort unsigned () (_ BitVec 32))
(define-sort size_t () (_ BitVec 64))

(declare-fun a () unsigned)
(declare-fun b () unsigned)

(declare-fun s () unsigned)
(declare-fun t () unsigned)

;-------------------------------------

(declare-fun more1 () Bool)

(assert
  (= more1
    (ite (bvugt s t) true
      (ite (bvult s t) false
	(bvult a b)))))

;-------------------------------------

(declare-fun more6 () Bool)

(declare-fun x () size_t)
(declare-fun y () size_t)
(declare-fun z () size_t)

(declare-fun zero () size_t)

(define-fun extend ((w unsigned)) size_t
  (((_ zero_extend 32) w)))

(assert (= x (bvsub (extend t) (extend s))))
(assert (= y (bvsub (extend s) (extend t))))
(assert (= z (bvsub (extend a) (extend b))))

(assert (= zero (_ bv0 64)))

(assert
  (= more6
    (distinct
      (bvlshr
	(bvor x (bvand z (bvnot y)))
	(_ bv63 64))
      zero)))

;-------------------------------------

(assert (distinct more1 more6))

(check-sat)
