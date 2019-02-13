(assert (fullName Juan Andres Moreno Silva))
(defrule example (fullName ?a ?b ?c ?d) => (assert fullName2 ?a ?b ?c ?d))
