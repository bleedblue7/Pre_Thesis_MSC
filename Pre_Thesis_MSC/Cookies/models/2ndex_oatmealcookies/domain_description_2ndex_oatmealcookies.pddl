(define (domain 2ndex_oatmealcookies) 
 
(:types 
vessel - artifact
food - matter
food - matter
cake - food
component - object
written-record - abstraction
kitchen-appliance - artifact
dried-fruit - food
sweetening - foodstuff
orchid - whole
degree - abstraction
abstraction - entity
dairy-product - foodstuff
foodstuff - food
matter - physical-entity
artifact - whole
whole - object
object - physical-entity
physical-entity - entity
ambiguous - entity
for - prepositions
in - prepositions
to - prepositions
) 
 
(:constants 
them - ambiguous
f - degree
vanilla - orchid
sugar - sweetening
raisins - dried-fruit
oven - kitchen-appliance
minutes - written-record
ingredients - component
eggs - foodstuff
cookies - cake
butter - dairy-product
bowl - vessel
minutes - for
bowl - in
oven - in
raisins - in
ingredients - to
f - to
) 
 
(:functions 
 	 (number-executed-mix) - (number 10) 
 	(number-executedDObIOb-preheat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-add ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-stir ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-bake ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-beat ?o - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	(number-executedIOb-scoop ?o - object) - (number 5) 
 	(number-executedIOb-bake ?o - object) - (number 5) 
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
 
	(:action place
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product ?vessel - vessel)
 	 	;:saliency (place-saliency ?dairy-product ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-place ?dairy-product ?vessel) 5) 
 	 	 	 (property-in ?vessel) 
 	 	 	(not (= ?dairy-product ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?dairy-product ?vessel) 1) 
 	 	(executed-place ?dairy-product ?vessel) 
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
 
	(:action place
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?kitchen-appliance - kitchen-appliance)
 	 	;:saliency (place-saliency ?ambiguous ?kitchen-appliance)
 	 	:precondition (and (<= (number-executedDObIOb-place ?ambiguous ?kitchen-appliance) 5) 
 	 	 	 (property-preheated ?kitchen-appliance) 
 	 	 	(property-in ?kitchen-appliance) 
 	 	 	(not (= ?ambiguous ?kitchen-appliance))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?ambiguous ?kitchen-appliance) 1) 
 	 	(executed-place ?ambiguous ?kitchen-appliance) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?sweetening - sweetening ?vessel - vessel)
 	 	;:saliency (place-saliency ?sweetening ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-place ?sweetening ?vessel) 5) 
 	 	 	 (or (property-brown ?sweetening) 
 	 	 	(property-large ?vessel) 
 	 	 	(property-white ?sweetening) 
 	 	 	)
 	 	 	(property-in ?vessel) 
 	 	 	(not (= ?sweetening ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?sweetening ?vessel) 1) 
 	 	(executed-place ?sweetening ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?dried-fruit1 - dried-fruit ?dried-fruit2 - dried-fruit)
 	 	;:saliency (stir-saliency ?dried-fruit1 ?dried-fruit2)
 	 	:precondition (and (<= (number-executedDObIOb-stir ?dried-fruit1 ?dried-fruit2) 5) 
 	 	 	 (property-in ?dried-fruit1) 
 	 	 	(not (= ?dried-fruit1 ?dried-fruit2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-stir ?dried-fruit1 ?dried-fruit2) 1) 
 	 	(executed-stir ?dried-fruit1 ?dried-fruit2) 
 	 	 	  ) 
 	)  
 
	(:action bake
 	 	:irrational 
 	 	:parameters (?written-record1 - written-record ?written-record2 - written-record)
 	 	;:saliency (bake-saliency ?written-record1 ?written-record2)
 	 	:precondition (and (<= (number-executedDObIOb-bake ?written-record1 ?written-record2) 5) 
 	 	 	 (property-for ?written-record1) 
 	 	 	(not (= ?written-record1 ?written-record2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-bake ?written-record1 ?written-record2) 1) 
 	 	(executed-bake ?written-record1 ?written-record2) 
 	 	 	  ) 
 	)  
 
	(:action beat
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product)
 	 	;:saliency (beat-saliency ?dairy-product)
 	 	:precondition (and (<= (number-executedIOb-beat ?dairy-product) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-beat ?dairy-product) 1) 
 	 	(executed-beat ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action beat
 	 	:irrational 
 	 	:parameters (?sweetening - sweetening)
 	 	;:saliency (beat-saliency ?sweetening)
 	 	:precondition (and (<= (number-executedIOb-beat ?sweetening) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-beat ?sweetening) 1) 
 	 	(executed-beat ?sweetening) 
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
 
	(:action scoop
 	 	:irrational 
 	 	:parameters (?cake - cake)
 	 	;:saliency (scoop-saliency ?cake)
 	 	:precondition (and (<= (number-executedIOb-scoop ?cake) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-scoop ?cake) 1) 
 	 	(executed-scoop ?cake) 
 	 	 	  ) 
 	)  
 
	(:action bake
 	 	:irrational 
 	 	:parameters (?cake - cake)
 	 	;:saliency (bake-saliency ?cake)
 	 	:precondition (and (<= (number-executedIOb-bake ?cake) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-scoop ?cake) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-bake ?cake) 1) 
 	 	(executed-bake ?cake) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
