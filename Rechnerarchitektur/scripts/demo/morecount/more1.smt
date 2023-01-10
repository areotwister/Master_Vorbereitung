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

(check-sat)
