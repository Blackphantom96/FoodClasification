;;Templates
(deftemplate Element (slot eColor) (slot iColor ) (slot taste) (slot class (type STRING))  (slot contexture (type STRING)) (slot size (type STRING)) (slot shape (type STRING)) (slot inSeed (type STRING)) (slot subcategory (type STRING)) )

;;;;;;;;;;;;;;;;;;;;;;Rules;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;Fruits
(defrule  rule_olive'description' (Element (class fruit)(eColor green|purple)(iColor green)(taste sour)(contexture medium)(size small)(shape circular)(inSeed y) )=>(printout t 'olive' crlf))
(defrule  rule_coconut'description' (Element (class fruit)(eColor brown)(iColor white)(taste unknown)(contexture hard)(size big)(shape circular)(inSeed n) )=>(printout t 'coconut' crlf))
(defrule  rule_cocoa'description' (Element (class fruit)(eColor brown|yellow)(iColor white|brown)(taste bitter)(contexture medium)(size medium)(shape oval)(inSeed y) )=>(printout t 'cocoa' crlf))
(defrule  rule_avocado'description' (Element (class fruit)(eColor green|black)(iColor green|yellow)(taste unknown)(contexture soft)(size medium)(shape oval)(inSeed y) )=>(printout t 'avocado' crlf))
(defrule  rule_almond'description' (Element (class fruit)(eColor brown)(iColor white)(taste unknown)(contexture hard)(size small)(shape oval)(inSeed y) )=>(printout t 'almond' crlf))
(defrule  rule_peanut'description' (Element (class fruit)(eColor yellow)(iColor yellow)(taste unknown)(contexture hard)(size small)(shape oval)(inSeed y) )=>(printout t 'peanut' crlf))
(defrule  rule_banana'description' (Element (class fruit)(eColor yellow)(iColor white)(taste sweet)(contexture soft)(size medium)(shape thin)(inSeed n) )=>(printout t 'banana' crlf))
(defrule  rule_cherry'description' (Element (class fruit)(eColor red)(iColor red)(taste sweet)(contexture medium)(size small)(shape circular)(inSeed y) )=>(printout t 'cherry' crlf))
(defrule  rule_melon'description' (Element (class fruit)(eColor orange)(iColor orange)(taste sweet)(contexture medium)(size big)(shape circular)(inSeed y) )=>(printout t 'melon' crlf))
(defrule  rule_pear'description' (Element (class fruit)(eColor green|brown)(iColor white)(taste sweet)(contexture medium)(size medium)(shape circular)(inSeed y) )=>(printout t 'pear' crlf))
(defrule  rule_water_melon'description' (Element (class fruit)(eColor green)(iColor red)(taste sweet)(contexture medium)(size big)(shape oval)(inSeed y) )=>(printout t 'water_melon' crlf))
(defrule  rule_grape'description' (Element (class fruit)(eColor green|purple|red)(iColor green)(taste sweet|sour)(contexture soft)(size small)(shape circular)(inSeed y) )=>(printout t 'grape' crlf))
(defrule  rule_pineapple'description' (Element (class fruit)(eColor yellow)(iColor yellow)(taste sweet|sour)(contexture medium)(size big)(shape oval)(inSeed y) )=>(printout t 'pineapple' crlf))
(defrule  rule_kiwi'description' (Element (class fruit)(eColor brown)(iColor green)(taste sweet|sour)(contexture medium)(size medium)(shape circular)(inSeed y) )=>(printout t 'kiwi' crlf))
(defrule  rule_passion_fruit'description' (Element (class fruit)(eColor yellow)(iColor yellow)(taste sour)(contexture medium)(size medium)(shape circular)(inSeed y) )=>(printout t 'passion_fruit' crlf))
(defrule  rule_orange'description' (Element (class fruit)(eColor orange)(iColor orange)(taste sweet|sour)(contexture medium)(size medium)(shape circular)(inSeed y) )=>(printout t 'orange' crlf))
(defrule  rule_lemon'description' (Element (class fruit)(eColor yellow|green)(iColor yellow|green)(taste sour)(contexture medium)(size medium)(shape circular)(inSeed y) )=>(printout t 'lemon' crlf))
(defrule  rule_tomato'description' (Element (class fruit)(eColor red)(iColor red)(taste sour)(contexture medium)(size medium)(shape circular)(inSeed y) )=>(printout t 'tomato' crlf))
(defrule  rule_mandarin'description' (Element (class fruit)(eColor orange|green)(iColor orange)(taste sweet|sour)(contexture medium)(size medium)(shape circular)(inSeed y) )=>(printout t 'mandarin' crlf))
(defrule  rule_peach'description' (Element (class fruit)(eColor red)(iColor yellow)(taste sweet)(contexture medium)(size medium)(shape circular)(inSeed y) )=>(printout t 'peach' crlf))
(defrule  rule_guayaba'description' (Element (class fruit)(eColor yellow|green)(iColor red)(taste sweet|sour)(contexture medium)(size medium)(shape circular)(inSeed y) )=>(printout t 'guayaba' crlf))
(defrule  rule_mango'description' (Element (class fruit)(eColor green|yellow|red)(iColor yellow|green)(taste sweet|sour)(contexture medium)(size medium)(shape circular)(inSeed y) )=>(printout t 'mango' crlf))
(defrule  rule_raspberry'description' (Element (class fruit)(eColor red|purple)(iColor red|purple)(taste sour)(contexture medium)(size small)(shape circular)(inSeed y) )=>(printout t 'raspberry' crlf))
(defrule  rule_apple'description' (Element (class fruit)(eColor green|red|yellow)(iColor white)(taste sweet|sour)(contexture medium)(size medium)(shape circular)(inSeed y) )=>(printout t 'apple' crlf))


;;Vegetables;;
(defrule  rule_lettice'description' (Element (class vegetable)(eColor green)(iColor white)(taste unknown)(contexture soft)(size medium)(shape leaf)(inSeed n)(subcategory leaf) )=>(printout t 'lettice' crlf))
(defrule  rule_cauliflower'description' (Element (class vegetable)(eColor white)(iColor white)(taste unknown)(contexture soft)(size small)(shape tree)(inSeed n)(subcategory inflorescences) )=>(printout t 'cauliflower' crlf))
(defrule  rule_broccoli'description' (Element (class vegetable)(eColor green)(iColor white)(taste unknown)(contexture soft)(size small)(shape tree)(inSeed n)(subcategory inflorescences) )=>(printout t 'broccoli' crlf))
(defrule  rule_carrot'description' (Element (class vegetable)(eColor orange)(iColor orange)(taste sweet)(contexture medium)(size medium)(shape thin)(inSeed n)(subcategory root) )=>(printout t 'carrot' crlf))
(defrule  rule_patata'description' (Element (class vegetable)(eColor yellow|brown)(iColor yellow|white)(taste unknown)(contexture medium)(size small)(shape circular)(inSeed n)(subcategory tuber) )=>(printout t 'patata' crlf))
(defrule  rule_ginger'description' (Element (class vegetable)(eColor gray)(iColor white)(taste spicy)(contexture medium)(size small)(shape root)(inSeed n)(subcategory rhizome) )=>(printout t 'ginger' crlf))
(defrule  rule_cassava'description' (Element (class vegetable)(eColor brown)(iColor white)(taste unknown)(contexture hard)(size big)(shape root)(inSeed n)(subcategory root) )=>(printout t 'cassava' crlf))
(defrule  rule_onion'description' (Element (class vegetable)(eColor purple)(iColor white)(taste unknown)(contexture medium)(size small)(shape circular)(inSeed n)(subcategory bulb) )=>(printout t 'onion' crlf))

;;;Questions

(defrule questionShape
?e <- (Element (shape nil))
=>  (printout t "What is the shape?" crlf)
    (bind ?shapeV (read))
    (modify ?e (shape ?shapeV))
)

(defrule questioninSeed
?e <- (Element (inSeed nil))
=>  (printout t "have inside seed? (y/n)" crlf)
    (bind ?inSeedV (read))
    (modify ?e (inSeed ?inSeedV))
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

(defrule questionSubCategory
?e <- (Element (subcategory nil) {class != fruit})
=>  (printout t "what is the subCategory? (. to skip)" crlf)
    (bind ?subCategoryV (read))
    (if (= ?subCategoryV ".") then
      (bind ?subCategoryV nil)
    )
    (modify ?e (subcategory ?subCategoryV))
)

(defrule questionTaste
?e <- (Element (taste nil))
=>  (printout t "what is the taste?" crlf)
    (bind ?tasteV (read))
    (modify ?e (taste ?tasteV))
    (printout t ?e.taste crlf )
)

;;Logical
(defrule rule_subCategory "the vegetables only have this category" 
?e <- (Element {subcategory != nil}) 
=> (modify ?e (class vegetable))
)

(defrule rule_sourFruit "no exist a sour vegetable" 
?e <- (Element (taste sour))
=> (modify ?e (class fruit))
)

(defrule rule_spicyVegetable "no exist a spicy fruit" 
?e <- (Element (taste spicy))
=> (modify ?e (class vegetable))
)


;;init app
(reset)
(watch all)
(assert (Element))
; (assert (Element (subcategory root) ))
; (assert (Element (taste (create$ sour sweet ))))

(run)