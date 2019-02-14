(set-strategy breadth)
(bind ?*con* (create$ ini))
(bind ?*ids* (create$ ini))

(deffunction hist (?idR $?args)
  (bind ?*con* (create$ ?*con* ?args))
  (foreach ?v ?args
    (bind ?*ids* (create$ ?*ids* ?idR)))
  (printout t "DEBUG " ?args " ------- " ?idR crlf)
)


(assert (A)(B)(D)(H))

(defrule AB-C ?f <- (A)(B) => (assert (C)) (printout t AB-C (hist (call ?f getFactId) C ) " <<<<" crlf)) ;1
(defrule DC-F ?f <- (D)(C) => (assert (F)) (printout t DC-F (hist (call ?f getFactId) F ) "<<<<" crlf)) ;2
(defrule H-FE ?f <-(H) => (assert (F)(E)) (printout t  H-FE (hist (call ?f getFactId) F E ) "<<<<" crlf)) ;3 TODO: fix
(defrule F-G ?f <- (F) => (assert (G)) (printout t  F-G (hist (call ?f getFactId) G ) "<<<<" crlf)) ;4
(defrule E-G ?f <-(E) => (assert (G)) (printout t  E-G (hist (call ?f getFactId) G ) "<<<<" crlf)) ;5

(deffunction howRule ()
  (printout t "How ... " )
  (bind ?x (sym-cat (read)))
  (if (member$ ?x ?*con*) then
    (bind ?i 1)
    (while (< ?i (length$ ?*con*)) do
        (if (eq (nth$ ?i ?*con*) ?x ) then
            (printout t (call (fact-id ?i) getName)  crlf)
        )
        (bind ?i (+ 1 ?i))
    )
  )
  (howRule)
)

(run)
(facts *)
(printout t ?*con* crlf ?*ids* crlf)
(howRule)
; (printout t (call (fact-id 0) getName)  crlf)