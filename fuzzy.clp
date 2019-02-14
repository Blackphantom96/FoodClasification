; (set-strategy breadth)
(deffunction getRandom(?x)
    (bind ?r (/ (random) 65536))
    (printout t ?r " ")
    (return (> ?x ?r)))
    
(assert (A 0.9)(B 0.8)(D 0.9)(H 0.45))

(defrule AB-C (A ?x)(B ?y&:(getRandom (* ?y ?x) )) => (assert (C (* ?x ?y))) (printout t AB-C crlf))
(defrule DC-F (D ?x ) (C ?y&:(getRandom (* ?y ?x) )) => (assert (F (* ?x ?y))) (printout t DC-F crlf))
(defrule H-FE (H ?x&:(getRandom ?x )) => (assert (F ?x)(E ?x)) (printout t  H-FE crlf))
(defrule F-G (F ?x&:(getRandom ?x ))=> (assert (G ?x)) (printout t  F-G crlf))
(defrule E-G (E ?x&:(getRandom ?x ))=> (assert (G ?x)) (printout t  E-G crlf))


; (watch all)
(run)
(facts *)