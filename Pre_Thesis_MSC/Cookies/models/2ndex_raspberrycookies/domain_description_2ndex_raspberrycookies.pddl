(define (domain 2ndex_raspberrycookies) 
 
(:types 
vessel - artifact
food - matter
potato - food
cake - food
component - object
kitchen-appliance - artifact
vascular-plant - whole
bramble-bush - vascular-plant
salt - substance
expanse - abstraction
sweetening - foodstuff
orchid - vascular-plant
degree - abstraction
abstraction - entity
beverage - food
dairy-product - foodstuff
foodstuff - food
food - substance
substance - matter
matter - physical-entity
artifact - whole
whole - object
object - physical-entity
physical-entity - entity
in - prepositions
on - prepositions
to - prepositions
) 
 
(:constants 
soda - compound
f - degree
vanilla - orchid
sugar - sweetening
sheet - expanse
raspberries - bramble-bush
oven - kitchen-appliance
ingredients - component
flour - foodstuff
eggs - foodstuff
cookies - cake
cookie - cake
chocolate - beverage
chips - potato
butter - dairy-product
bowl - vessel
bowl - in
sheet - on
ingredients - to
f - to
) 
 
(:functions 
 	 (number-executedDObIOb-preheat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-combine ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-add ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-put ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-mix ?o - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	(number-executedIOb-stir ?o - object) - (number 5) 
 	(number-executedIOb-fold ?o - object) - (number 5) 
 	) 
 
 	(:action preheat
 	 	:irrational 
 	 	:parameters (?kitchen-appliance - kitchen-appliance ?degree - degree)
 	 	;:saliency (preheat-saliency ?kitchen-appliance ?degree)
 	 	:precondition (and (<= (number-executedDObIOb-preheat ?kitchen-appliance ?degree) 5) 
 	 	 	 (property-to ?degree) 
 	 	 	(not (= ?kitchen-appliance ?degree))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-preheat ?kitchen-appliance ?degree) 1) 
 	 	(executed-preheat ?kitchen-appliance ?degree) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff ?vessel - vessel)
 	 	;:saliency (combine-saliency ?foodstuff ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-combine ?foodstuff ?vessel) 5) 
 	 	 	 (property-in ?vessel) 
 	 	 	(not (= ?foodstuff ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-combine ?foodstuff ?vessel) 1) 
 	 	(executed-combine ?foodstuff ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?compound - compound ?vessel - vessel)
 	 	;:saliency (combine-saliency ?compound ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-combine ?compound ?vessel) 5) 
 	 	 	 (property-baking ?compound) 
 	 	 	(property-in ?vessel) 
 	 	 	(not (= ?compound ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-combine ?compound ?vessel) 1) 
 	 	(executed-combine ?compound ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?component1 - component ?component2 - component)
 	 	;:saliency (add-saliency ?component1 ?component2)
 	 	:precondition (and (<= (number-executedDObIOb-add ?component1 ?component2) 5) 
 	 	 	 (property-dry ?component1) 
 	 	 	(property-wet ?component1) 
 	 	 	(property-to ?component1) 
 	 	 	(not (= ?component1 ?component2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?component1 ?component2) 1) 
 	 	(executed-add ?component1 ?component2) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?cake - cake ?expanse - expanse)
 	 	;:saliency (put-saliency ?cake ?expanse)
 	 	:precondition (and (<= (number-executedDObIOb-put ?cake ?expanse) 5) 
 	 	 	 (property-on ?expanse) 
 	 	 	(not (= ?cake ?expanse))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?cake ?expanse) 1) 
 	 	(executed-put ?cake ?expanse) 
 	 	 	  ) 
 	)  
 
	(:action mix
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product)
 	 	;:saliency (mix-saliency ?dairy-product)
 	 	:precondition (and (<= (number-executedIOb-mix ?dairy-product) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-mix ?dairy-product) 1) 
 	 	(executed-mix ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action mix
 	 	:irrational 
 	 	:parameters (?sweetening - sweetening)
 	 	;:saliency (mix-saliency ?sweetening)
 	 	:precondition (and (<= (number-executedIOb-mix ?sweetening) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-mix ?sweetening) 1) 
 	 	(executed-mix ?sweetening) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff)
 	 	;:saliency (add-saliency ?foodstuff)
 	 	:precondition (and (<= (number-executedIOb-add ?foodstuff) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?foodstuff) 1) 
 	 	(executed-add ?foodstuff) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?orchid - orchid)
 	 	;:saliency (add-saliency ?orchid)
 	 	:precondition (and (<= (number-executedIOb-add ?orchid) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?orchid) 1) 
 	 	(executed-add ?orchid) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?potato - potato)
 	 	;:saliency (stir-saliency ?potato)
 	 	:precondition (and (<= (number-executedIOb-stir ?potato) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-stir ?potato) 1) 
 	 	(executed-stir ?potato) 
 	 	 	  ) 
 	)  
 
	(:action fold
 	 	:irrational 
 	 	:parameters (?bramble-bush - bramble-bush)
 	 	;:saliency (fold-saliency ?bramble-bush)
 	 	:precondition (and (<= (number-executedIOb-fold ?bramble-bush) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-fold ?bramble-bush) 1) 
 	 	(executed-fold ?bramble-bush) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
