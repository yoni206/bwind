(set-logic ALL)
(declare-const k Int)
(declare-const C2 (_ BitVec k))
(declare-const %a (_ BitVec k))
(declare-const C1 (_ BitVec k))
(assert (and (bvult C1 C2) (= C2 (bvadd C1 (_ bv1 k))) (not (= (and (bvugt %a C1) (not (= %a C2))) (bvugt %a C2)))))
(check-sat)
