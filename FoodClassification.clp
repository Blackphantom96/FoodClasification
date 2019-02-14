;;Templates
(deftemplate Element (multislot eColor) (multislot iColor ) (multislot taste) (slot class)  (slot contexture) (slot size) (slot shape) (slot name))

;;;;;;;;;;;;;;;;;;;;;;Rules;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;Fruits
(deffacts Fruits
  (Element (class fruit)(eColor green purple)(iColor green)(taste sour)(contexture medium)(size small)(shape circular) (name olive)) 
  (Element (class fruit)(eColor brown)(iColor white)(taste unknown)(contexture hard)(size big)(shape circular) (name coconut)) 
  (Element (class fruit)(eColor brown yellow)(iColor white brown)(taste bitter)(contexture medium)(size medium)(shape oval) (name cocoa)) 
  (Element (class fruit)(eColor green black)(iColor green yellow)(taste unknown)(contexture soft)(size medium)(shape oval) (name avocado)) 
  (Element (class fruit)(eColor brown)(iColor white)(taste unknown)(contexture hard)(size small)(shape oval) (name almond)) 
  (Element (class fruit)(eColor yellow)(iColor yellow)(taste unknown)(contexture hard)(size small)(shape oval) (name peanut)) 
  (Element (class fruit)(eColor yellow)(iColor white)(taste sweet)(contexture soft)(size medium)(shape thin) (name banana)) 
  (Element (class fruit)(eColor red)(iColor red)(taste sweet)(contexture medium)(size small)(shape circular) (name cherry)) 
  (Element (class fruit)(eColor orange)(iColor orange)(taste sweet)(contexture medium)(size big)(shape circular) (name melon)) 
  (Element (class fruit)(eColor green brown)(iColor white)(taste sweet)(contexture medium)(size medium)(shape circular) (name pear)) 
  (Element (class fruit)(eColor green)(iColor red)(taste sweet)(contexture medium)(size big)(shape oval) (name water_melon)) 
  (Element (class fruit)(eColor green purple red)(iColor green)(taste sweet sour)(contexture soft)(size small)(shape circular) (name grape)) 
  (Element (class fruit)(eColor yellow)(iColor yellow)(taste sweet sour)(contexture medium)(size big)(shape oval) (name pineapple)) 
  (Element (class fruit)(eColor brown)(iColor green)(taste sweet sour)(contexture medium)(size medium)(shape circular) (name kiwi)) 
  (Element (class fruit)(eColor yellow)(iColor yellow)(taste sour)(contexture medium)(size medium)(shape circular) (name passion_fruit)) 
  (Element (class fruit)(eColor orange)(iColor orange)(taste sweet sour)(contexture medium)(size medium)(shape circular) (name orange)) 
  (Element (class fruit)(eColor yellow green)(iColor yellow green)(taste sour)(contexture medium)(size medium)(shape circular) (name lemon)) 
  (Element (class fruit)(eColor red)(iColor red)(taste sour)(contexture medium)(size medium)(shape circular) (name tomato)) 
  (Element (class fruit)(eColor orange green)(iColor orange)(taste sweet sour)(contexture medium)(size medium)(shape circular) (name mandarin)) 
  (Element (class fruit)(eColor red)(iColor yellow)(taste sweet)(contexture medium)(size medium)(shape circular) (name peach)) 
  (Element (class fruit)(eColor yellow green)(iColor red)(taste sweet sour)(contexture medium)(size medium)(shape circular) (name guayaba)) 
  (Element (class fruit)(eColor green yellow red)(iColor yellow green)(taste sweet sour)(contexture medium)(size medium)(shape circular) (name mango)) 
  (Element (class fruit)(eColor red purple)(iColor red purple)(taste sour)(contexture medium)(size small)(shape circular) (name raspberry)) 
  (Element (class fruit)(eColor green red yellow)(iColor white)(taste sweet sour)(contexture medium)(size medium)(shape circular) (name apple)) 
)
;;Vegetables;;
(deffacts Vegetables
  (Element (class vegetable)(eColor green)(iColor white)(taste unknown)(contexture soft)(size medium)(shape leaf) (name lettice)) 
  (Element (class vegetable)(eColor white)(iColor white)(taste unknown)(contexture soft)(size small)(shape tree) (name cauliflower)) 
  (Element (class vegetable)(eColor green)(iColor white)(taste unknown)(contexture soft)(size small)(shape tree) (name broccoli)) 
  (Element (class vegetable)(eColor orange)(iColor orange)(taste unknown)(contexture medium)(size medium)(shape thin) (name carrot)) 
  (Element (class vegetable)(eColor yellow brown)(iColor yellow white)(taste unknown)(contexture medium)(size small)(shape circular) (name patata)) 
  (Element (class vegetable)(eColor gray)(iColor white)(taste spicy)(contexture medium)(size small)(shape root) (name ginger)) 
  (Element (class vegetable)(eColor brown)(iColor white)(taste unknown)(contexture hard)(size big)(shape root) (name cassava)) 
  (Element (class vegetable)(eColor purple)(iColor white)(taste unknown)(contexture medium)(size small)(shape circular) (name onion)) 
)
;;;Questions

(defrule questionTaste
=>  (printout t "what is the taste?" crlf)
    (bind ?x (sym-cat (read)))
    (assert (taste ?x))
)

(defrule questionSubCategory
=>  (printout t "what is the subCategory?" crlf)
    (bind ?x (read))
    (assert (subCategory ?x))
)

(defrule questionShape
?e <- (Element (shape nil))
=>  (printout t "What is the shape?" crlf)
    (bind ?x (sym-cat (read)))
    (assert )
)



(defrule questionClass
?e <- (Element (class nil))
=>  (printout t "Is vegetable or fruit?" crlf)
    (bind ?classV (read))
    (modify ?e (class ?classV))
)


(defrule questionEColor
?e <- (Element (eColor nil))
=>  (printout t "what is the external color?" crlf)
    (bind ?eColorV (read))
    (modify ?e (eColor ?eColorV))
)


(defrule questionIColor
?e <- (Element (iColor nil))
=>  (printout t "what is the internal color?" crlf)
    (bind ?iColorV (read))
    (modify ?e (iColor ?iColorV))
)

(defrule questionContexture
?e <- (Element (contexture nil))
=>  (printout t "what is the contexture?" crlf)
    (bind ?contextureV (read))
    (modify ?e (contexture ?contextureV))
)


(defrule questionSize
?e <- (Element (size nil))
=>  (printout t "What is the size?" crlf)
    (bind ?sizeV (read))
    (modify ?e (size ?sizeV))
)





;;Logical
(defrule questionSeed
=>  (printout t "have seed(s)? (y/n)" crlf)
    (bind ?x (read))
    (assert (seed ?x))
    (if (eq ?x y) then
      (assert (class fruit))
    else
      (assert (class vegetable))
    )
    
)

(defrule rule_subCategory "the vegetables only have this category" 
(subcategory ?x&:(neq ?x nil))
=> (assert (class vegetable))
)

(defrule rule_sourFruit "no exist a sour vegetable" 
(taste sour)
=> (assert (class fruit))
)

(defrule rule_spicyVegetable "no exist a spicy fruit" 
(taste spicy)
=> (assert (class vegetable))
)

(defrule rule_fruitsHaveSeed "fruit has seed"
(seed ?x&:(eq ?x y))
=> (class fruit)
)


;;init app
(reset)
; (watch all)
(assert (Element))
; (assert (Element (subcategory root) ))
; (assert (Element (taste (create$ sour sweet ))))

(run)

;https://www.cocinadelirante.com/tips/diferencia-entre-fruta-y-verdura
;https://caymansseo.com/diferencias-entre-frutas-verduras-hortalizas