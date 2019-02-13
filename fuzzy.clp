; (set-strategy breadth)
(deffunction getRandom(?x)
()
(return (> ?x (/ (random) 65536))
)
(assert (A 0.9)(B 0.8)(D 0.9)(H 0.45))

(defrule AB-C (A ?x)(B ?y&:(> (* ?y ?x) (/ (random) 65536) )) => (assert (C (* ?x ?y))) (printout t AB-C crlf))
(defrule DC-F (D ?x ) (C ?y&:(> (* ?y ?x) (/ (random) 65536) )) => (assert (F (* ?x ?y))) (printout t DC-F crlf))
(defrule H-FE (H ?x&: )) => (assert (F ?x)(E ?x)) (printout t  H-FE crlf))
(defrule F-G (F ?x&:(> ?x (/ (random) 65536) ))=> (assert (G ?x)) (printout t  F-G crlf))
(defrule E-G (E ?x&:(> ?x (/ (random) 65536) ))=> (assert (G ?x)) (printout t  E-G crlf))


; (watch all)
(run)
(facts *)