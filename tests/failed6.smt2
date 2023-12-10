(set-logic QF_BV)
(declare-const ' + bw_str Int)(declare-const x (_ BitVec k))
(declare-const s (_ BitVec k))
(declare-const t (_ BitVec k))
(define-fun lemma_0 () Bool (=> (= (bvurem x s) t) (=> (distinct s (_ bv0 k)) (bvule t s)))
)
(assert (not lemma_0))
(check-sat)
