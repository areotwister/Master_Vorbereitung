(set-logic QF_BV)

(define-sort unsigned () (_ BitVec 32))

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

(declare-fun more5 () Bool)

(declare-fun x () unsigned)
(declare-fun y () unsigned)
(declare-fun z () unsigned)

(declare-fun zero () unsigned)

(assert (= x (bvsub t s)))
(assert (= y (bvsub s t)))
(assert (= z (bvsub a b)))

(assert (= zero (_ bv0 32)))

(assert
  (= more5
    (distinct
      (bvlshr
	(bvor x (bvand z (bvnot y)))
	(_ bv31 32))
      zero)))

;-------------------------------------

(assert (distinct more1 more5))

(check-sat)
