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

(declare-fun more3 () Bool)

(declare-fun x () Bool)
(declare-fun y () Bool)
(declare-fun z () Bool)

(declare-fun zero () unsigned)

(assert (= x (bvugt s t)))
(assert (= y (bvult s t)))
(assert (= z (bvult a b)))

(assert
  (= more3
    (bvor x (bvand (bvnot y) z))))

;-------------------------------------

(assert (distinct more1 more3))

(check-sat)
