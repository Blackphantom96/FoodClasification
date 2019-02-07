;;Templates
; (deftemplate FruitVegetable (slot type))
; (deftemplate ExternalColor (slot eColor))
; (deftemplate InternalColor (slot iColor))
; (deftemplate Taste (slot taste))
; (deftemplate Contexture (slot contexture))
; (deftemplate Size (slot size))
; (deftemplate Shape (slot shape))
(deftemplate Element (slot kind (type STRING)) (slot eColor (type STRING)) (slot iColor (type STRING)) (slot taste (type STRING)) (slot contexture (type STRING)) (slot size (type STRING)) (slot shape (type STRING)))

;;Rules
(defrule r0 "this rules define a apple" (Element {kind == "Fruit"}) => (printout t "yes" crlf))







;;init app
(reset)

(run)