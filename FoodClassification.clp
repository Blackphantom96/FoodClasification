;;Templates
; (deftemplate FruitVegetable (slot type))
; (deftemplate ExternalColor (slot eColor))
; (deftemplate InternalColor (slot iColor))
; (deftemplate Taste (slot taste))
; (deftemplate Contexture (slot contexture))
; (deftemplate Size (slot size))
; (deftemplate Shape (slot shape))
(deftemplate Element (slot type) (slot eColor) (slot iColor) (slot taste) (slot contexture) (slot size) (slot shape))

;;Rules
(defrule r0 "this rules define a apple" (type))
