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
(declare (salience 10))
=>  (printout t "what is the taste?" crlf)
    (bind ?x (sym-cat (read)))
    (assert (taste ?x))
)

(defrule questionSubCategory
(class vegetable)
=>  (printout t "what is the subCategory?" crlf)
    (bind ?x (sym-cat (read)))
    (assert (subCategory ?x))
)

(defrule questionShape
=>  (printout t "What is the shape?" crlf)
    (bind ?x (sym-cat (read)))
    (assert (shape ?x))
)



(defrule questionClass
(declare (salience -100))
(class ?x&:(neq ?x nil))
=>  (printout t "Is vegetable or fruit?" crlf)
    (bind ?x (sym-cat (read)))
    (assert (class ?x ))
)


(defrule questionEColor
=>  (printout t "what is the external color?" crlf)
    (bind ?x (sym-cat (read)))
    (assert  (eColor ?x))
)


(defrule questionIColor
=>  (printout t "what is the internal color?" crlf)
    (bind ?x (sym-cat (read)))
    (assert  (iColor ?x))
)

(defrule questionContexture
=>  (printout t "what is the contexture?" crlf)
    (bind ?x (sym-cat (read)))
    (assert  (contexture ?x))
)


(defrule questionSize
=>  (printout t "What is the size?" crlf)
    (bind ?x (sym-cat (read)))
    (assert  (size ?x))
)



;;Logical
(defrule questionSeed
(declare (salience 100))
=>  (printout t "have seed(s) or is a seed? (y/n)" crlf)
    (bind ?x (sym-cat (read)))
    (assert (seed ?x))
    (if (eq ?x y) then
      (assert (class fruit))
    else
      (assert (class vegetable))
    )
    
)

(defrule rule_subCategory "the vegetables only have this category" 
(declare (salience 100))
(subcategory ?x&:(neq ?x nil))
=> (assert (class vegetable))
)

(defrule rule_sourFruit "no exist a sour vegetable" 
(declare (salience 100))
(taste sour)
=> (assert (class fruit))
)

(defrule rule_shapeRoot "no exist a fruit with fruit" 
(declare (salience 100))
(shape root)
=> (assert (class vegetable))
)

(defrule rule_spicyVegetable "no exist a spicy fruit" 
(declare (salience 100))
(taste spicy)
=> (assert (class vegetable))
)

(defrule final_rule "final rule"
(declare (salience -1000))
(class ?x)
(eColor ?ec)
(iColor ?ic)
(taste ?t)
(contexture ?c)
(size ?s)
(shape ?sh)
(Element (class ?x)(eColor ?ec) (iColor ?ic) (taste ?t) (contexture ?c) (size ?s) (shape ?sh) (name ?na) )
=> (printout t "You think in " ?na crlf)
)

;;init app
(reset)
; (watch all)
(run)

;https://www.cocinadelirante.com/tips/diferencia-entre-fruta-y-verdura
;https://caymansseo.com/diferencias-entre-frutas-verduras-hortalizas