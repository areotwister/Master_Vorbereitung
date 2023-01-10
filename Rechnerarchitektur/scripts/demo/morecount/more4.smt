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

(declare-fun more4 () Bool)

(declare-fun x () unsigned)
(declare-fun y () unsigned)
(declare-fun z () unsigned)

(declare-fun zero () unsigned)

(assert (= x ((_ zero_extend 31) (bvugt s t))))
(assert (= y ((_ zero_extend 31) (bvult s t))))
(assert (= z ((_ zero_extend 31) (bvult a b))))

(assert (= zero (_ bv0 32)))

(assert
  (= more4
    (distinct
      (bvor x
        (bvand
	  z
	  ((_ zero_extend 31)	; '(unsigned) !y'
	    (= y zero))))	; this is '!y'
      zero)))

;-------------------------------------

(assert (distinct more1 more4))

(check-sat)
