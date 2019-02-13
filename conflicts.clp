; (set-strategy breadth)

(assert (A)(B)(D)(H))

(defrule AB-C (A)(B) => (assert (C)) (printout t AB-C crlf))
(defrule DC-F (D) (C) => (assert (F)) (printout t DC-F crlf))
(defrule H-FE (H) => (assert (F)(E)) (printout t H-FE crlf))
(defrule F-G (F) => (assert (G)) (printout t F-G  crlf))
(defrule E-G (E) => (assert (G)) (printout t E-G  crlf))


; (watch all)
(run)
(facts *)