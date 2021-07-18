(define (domain 2ndex_spicyFrenchToast) 
 
(:types 
instrumentality - whole
vessel - instrumentality
food - matter
dish - food
ovum - living-thing
cooking - abstraction
vascular-plant - living-thing
alliaceous-plant - vascular-plant
oil - physical-entity
cooking-utensil - instrumentality
preservative - substance
physical-phenomenon - physical-entity
share - abstraction
region - object
piece-of-cloth - object
concoction - foodstuff
dairy-product - foodstuff
herb - vascular-plant
abstraction - entity
foodstuff - food
living-thing - whole
food - substance
substance - matter
baked-goods - food
matter - physical-entity
whole - object
object - physical-entity
physical-entity - entity
in - prepositions
of - prepositions
on_top_of - prepositions
to - prepositions
) 
 
(:constants 
grease - lipid
turmeric - herb
towel - piece-of-cloth
top - region
spices - preservative
slice - share
salt - compound
pressure - physical-phenomenon
powder - solid
paper - material
pan - cooking-utensil
mixture - substance
mix - concoction
milk - dairy-product
ginger - herb
garlic - alliaceous-plant
frying - cooking
eggs - foodstuff
egg - ovum
chili - dish
bread - baked-goods
bowl - vessel
bowl - in
pan - in
spices - in
mixture - in
pan - of
bread - on_top_of
eggs - to
) 
 
(:functions 
 	 (number-executed-take) - (number 10) 
 	(number-executed-serve) - (number 10) 
 	(number-executed-mix) - (number 10) 
 	(number-executed-heat) - (number 10) 
 	(number-executed-fry) - (number 10) 
 	(number-executed-combine) - (number 10) 
 	(number-executed-apply) - (number 10) 
 	(number-executedDObIOb-beat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-soak ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-put ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-paste ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-slices ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-whisk ?o - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	(number-executedIOb-allow ?o - object) - (number 5) 
 	(number-executedIOb-cook ?o - object) - (number 5) 
 	(number-executedIOb-soak ?o - object) - (number 5) 
 	(number-executedIOb-crack ?o - object) - (number 5) 
 	) 
 
 	(:action take
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-take) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-take) 
 	 	 	(increase (number-executed-take) 1) 
 	 	 	  ) 
 	)  
 
	(:action serve
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-serve) 10) 
 	 	 	(executed-apply) 
 	 	 	
 ) 
 	 	:effect (and (executed-serve) 
 	 	 	(increase (number-executed-serve) 1) 
 	 	 	  ) 
 	)  
 
	(:action mix
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-mix) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-mix) 
 	 	 	(increase (number-executed-mix) 1) 
 	 	 	  ) 
 	)  
 
	(:action heat
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-heat) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-heat) 
 	 	 	(increase (number-executed-heat) 1) 
 	 	 	  ) 
 	)  
 
	(:action fry
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-fry) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-fry) 
 	 	 	(increase (number-executed-fry) 1) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-combine) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-combine) 
 	 	 	(increase (number-executed-combine) 1) 
 	 	 	  ) 
 	)  
 
	(:action apply
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-apply) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-apply) 
 	 	 	(increase (number-executed-apply) 1) 
 	 	 	  ) 
 	)  
 
	(:action beat
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff ?vessel - vessel)
 	 	;:saliency (beat-saliency ?foodstuff ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-beat ?foodstuff ?vessel) 5) 
 	 	 	 (property-large ?vessel) 
 	 	 	(property-in ?vessel) 
 	 	 	(not (= ?foodstuff ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-beat ?foodstuff ?vessel) 1) 
 	 	(executed-beat ?foodstuff ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action soak
 	 	:irrational 
 	 	:parameters (?share - share ?substance - substance)
 	 	;:saliency (soak-saliency ?share ?substance)
 	 	:precondition (and (<= (number-executedDObIOb-soak ?share ?substance) 5) 
 	 	 	 (property-in ?substance) 
 	 	 	(not (= ?share ?substance))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-soak ?share ?substance) 1) 
 	 	(executed-soak ?share ?substance) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?piece-of-cloth - piece-of-cloth ?baked-goods - baked-goods)
 	 	;:saliency (place-saliency ?piece-of-cloth ?baked-goods)
 	 	:precondition (and (<= (number-executedDObIOb-place ?piece-of-cloth ?baked-goods) 5) 
 	 	 	 (property-on_top_of ?baked-goods) 
 	 	 	(not (= ?piece-of-cloth ?baked-goods))
	 	 	 (not (finished)) 
 	 	 	(executed-take) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?piece-of-cloth ?baked-goods) 1) 
 	 	(executed-place ?piece-of-cloth ?baked-goods) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?preservative1 - preservative ?preservative2 - preservative)
 	 	;:saliency (put-saliency ?preservative1 ?preservative2)
 	 	:precondition (and (<= (number-executedDObIOb-put ?preservative1 ?preservative2) 5) 
 	 	 	 (property-in ?preservative1) 
 	 	 	(not (= ?preservative1 ?preservative2))
	 	 	(not (finished)) 
 	 	 	(executed-combine) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?preservative1 ?preservative2) 1) 
 	 	(executed-put ?preservative1 ?preservative2) 
 	 	 	  ) 
 	)  
 
	(:action paste
 	 	:irrational 
 	 	:parameters (?foodstuff1 - foodstuff ?foodstuff2 - foodstuff)
 	 	;:saliency (paste-saliency ?foodstuff1 ?foodstuff2)
 	 	:precondition (and (<= (number-executedDObIOb-paste ?foodstuff1 ?foodstuff2) 5) 
 	 	 	 (property-to ?foodstuff1) 
 	 	 	(not (= ?foodstuff1 ?foodstuff2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-paste ?foodstuff1 ?foodstuff2) 1) 
 	 	(executed-paste ?foodstuff1 ?foodstuff2) 
 	 	 	  ) 
 	)  
 
	(:action slices
 	 	:irrational 
 	 	:parameters (?cooking-utensil1 - cooking-utensil ?cooking-utensil2 - cooking-utensil)
 	 	;:saliency (slices-saliency ?cooking-utensil1 ?cooking-utensil2)
 	 	:precondition (and (<= (number-executedDObIOb-slices ?cooking-utensil1 ?cooking-utensil2) 5) 
 	 	 	 (property-of ?cooking-utensil1) 
 	 	 	(not (= ?cooking-utensil1 ?cooking-utensil2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-slices ?cooking-utensil1 ?cooking-utensil2) 1) 
 	 	(executed-slices ?cooking-utensil1 ?cooking-utensil2) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff)
 	 	;:saliency (whisk-saliency ?foodstuff)
 	 	:precondition (and (<= (number-executedIOb-whisk ?foodstuff) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?foodstuff) 1) 
 	 	(executed-whisk ?foodstuff) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?solid - solid)
 	 	;:saliency (add-saliency ?solid)
 	 	:precondition (and (<= (number-executedIOb-add ?solid) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?solid) 1) 
 	 	(executed-add ?solid) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?compound - compound)
 	 	;:saliency (add-saliency ?compound)
 	 	:precondition (and (<= (number-executedIOb-add ?compound) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?compound) 1) 
 	 	(executed-add ?compound) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?herb - herb)
 	 	;:saliency (add-saliency ?herb)
 	 	:precondition (and (<= (number-executedIOb-add ?herb) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?herb) 1) 
 	 	(executed-add ?herb) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product)
 	 	;:saliency (add-saliency ?dairy-product)
 	 	:precondition (and (<= (number-executedIOb-add ?dairy-product) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?dairy-product) 1) 
 	 	(executed-add ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?concoction - concoction)
 	 	;:saliency (add-saliency ?concoction)
 	 	:precondition (and (<= (number-executedIOb-add ?concoction) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?concoction) 1) 
 	 	(executed-add ?concoction) 
 	 	 	  ) 
 	)  
 
	(:action allow
 	 	:irrational 
 	 	:parameters (?cooking-utensil - cooking-utensil)
 	 	;:saliency (allow-saliency ?cooking-utensil)
 	 	:precondition (and (<= (number-executedIOb-allow ?cooking-utensil) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-allow ?cooking-utensil) 1) 
 	 	(executed-allow ?cooking-utensil) 
 	 	 	  ) 
 	)  
 
	(:action cook
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods)
 	 	;:saliency (cook-saliency ?baked-goods)
 	 	:precondition (and (<= (number-executedIOb-cook ?baked-goods) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-fry) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-cook ?baked-goods) 1) 
 	 	(executed-cook ?baked-goods) 
 	 	 	  ) 
 	)  
 
	(:action soak
 	 	:irrational 
 	 	:parameters (?lipid - lipid)
 	 	;:saliency (soak-saliency ?lipid)
 	 	:precondition (and (<= (number-executedIOb-soak ?lipid) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-soak ?lipid) 1) 
 	 	(executed-soak ?lipid) 
 	 	 	  ) 
 	)  
 
	(:action crack
 	 	:irrational 
 	 	:parameters (?vessel - vessel)
 	 	;:saliency (crack-saliency ?vessel)
 	 	:precondition (and (<= (number-executedIOb-crack ?vessel) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-crack ?vessel) 1) 
 	 	(executed-crack ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
