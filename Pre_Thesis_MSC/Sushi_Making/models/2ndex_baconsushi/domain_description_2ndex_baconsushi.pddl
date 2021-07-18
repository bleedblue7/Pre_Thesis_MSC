(define (domain 2ndex_baconsushi) 
 
(:types 
food - matter
edible-fruit - food
cut-of-pork - food
wood - material
side - object
vessel - instrumentality
elite - abstraction
organism - whole
melon - organism
aquatic-vertebrate - organism
cooking-utensil - instrumentality
compound - material
spatial-property - attribute
expanse - attribute
part - abstraction
form - part
part - physical-entity
flavorer - foodstuff
dish - food
cloak - covering
engineering - abstraction
condiment - flavorer
sweetening - flavorer
attribute - abstraction
grain - foodstuff
part - object
floor-cover - covering
covering - artifact
abstraction - entity
dairy-product - foodstuff
foodstuff - food
food - substance
instrumentality - artifact
artifact - whole
whole - object
object - physical-entity
material - substance
substance - matter
matter - physical-entity
physical-entity - entity
ambiguous - entity
in - prepositions
into - prepositions
of - prepositions
with - prepositions
) 
 
(:constants 
it - engineering
wrap - cloak
vinegar - condiment
vegetables - produce
sushi - dish
sugar - sweetening
strips - part
stem - form
sheet - expanse
shape - spatial-property
salt - compound
rice - grain
pot - cooking-utensil
pieces - part
mat - floor-cover
jalapeño - ambiguous
fish - aquatic-vertebrate
cucumber - melon
cream - elite
cheese - dairy-product
bowl - vessel
bottom - side
bamboo - wood
bacon - cut-of-pork
avocado - edible-fruit
pot - in
bowl - in
shape - into
pieces - into
strips - into
sheet - of
wrap - with
) 
 
(:functions 
 	 (number-executed-veins) - (number 10) 
 	(number-executed-set) - (number 10) 
 	(number-executed-serve) - (number 10) 
 	(number-executed-seeds) - (number 10) 
 	(number-executedDObIOb-boil ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cool ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cover ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-take ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-roll ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-slice ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-uncover ?o - object) - (number 5) 
 	(number-executedIOb-sprinkle ?o - object) - (number 5) 
 	(number-executedIOb-remove ?o - object) - (number 5) 
 	(number-executedIOb-prepare ?o - object) - (number 5) 
 	(number-executedIOb-roll ?o - object) - (number 5) 
 	(number-executedIOb-spread ?o - object) - (number 5) 
 	(number-executedIOb-arrange ?o - object) - (number 5) 
 	) 
 
 	(:action veins
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-veins) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-veins) 
 	 	 	(increase (number-executed-veins) 1) 
 	 	 	  ) 
 	)  
 
	(:action set
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-set) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-set) 
 	 	 	(increase (number-executed-set) 1) 
 	 	 	  ) 
 	)  
 
	(:action serve
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-serve) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-serve) 
 	 	 	(increase (number-executed-serve) 1) 
 	 	 	  ) 
 	)  
 
	(:action seeds
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-seeds) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-seeds) 
 	 	 	(increase (number-executed-seeds) 1) 
 	 	 	  ) 
 	)  
 
	(:action boil
 	 	:irrational 
 	 	:parameters (?grain - grain ?cooking-utensil - cooking-utensil)
 	 	;:saliency (boil-saliency ?grain ?cooking-utensil)
 	 	:precondition (and (<= (number-executedDObIOb-boil ?grain ?cooking-utensil) 5) 
 	 	 	 (property-large ?cooking-utensil) 
 	 	 	(property-in ?cooking-utensil) 
 	 	 	(not (= ?grain ?cooking-utensil))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-boil ?grain ?cooking-utensil) 1) 
 	 	(executed-boil ?grain ?cooking-utensil) 
 	 	 	  ) 
 	)  
 
	(:action cool
 	 	:irrational 
 	 	:parameters (?grain - grain ?vessel - vessel)
 	 	;:saliency (cool-saliency ?grain ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-cool ?grain ?vessel) 5) 
 	 	 	 (property-large ?vessel) 
 	 	 	(property-in ?vessel) 
 	 	 	(not (= ?grain ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cool ?grain ?vessel) 1) 
 	 	(executed-cool ?grain ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action slice
 	 	:irrational 
 	 	:parameters (?engineering - engineering ?part - part)
 	 	;:saliency (slice-saliency ?engineering ?part)
 	 	:precondition (and (<= (number-executedDObIOb-slice ?engineering ?part) 5) 
 	 	 	 (property-into ?part) 
 	 	 	(not (= ?engineering ?part))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-slice ?engineering ?part) 1) 
 	 	(executed-slice ?engineering ?part) 
 	 	 	  ) 
 	)  
 
	(:action cover
 	 	:irrational 
 	 	:parameters (?floor-cover - floor-cover ?cloak - cloak)
 	 	;:saliency (cover-saliency ?floor-cover ?cloak)
 	 	:precondition (and (<= (number-executedDObIOb-cover ?floor-cover ?cloak) 5) 
 	 	 	 (property-plastic ?cloak) 
 	 	 	(property-with ?cloak) 
 	 	 	(not (= ?floor-cover ?cloak))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cover ?floor-cover ?cloak) 1) 
 	 	(executed-cover ?floor-cover ?cloak) 
 	 	 	  ) 
 	)  
 
	(:action take
 	 	:irrational 
 	 	:parameters (?side - side ?expanse - expanse)
 	 	;:saliency (take-saliency ?side ?expanse)
 	 	:precondition (and (<= (number-executedDObIOb-take ?side ?expanse) 5) 
 	 	 	 (property-of ?expanse) 
 	 	 	(not (= ?side ?expanse))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-take ?side ?expanse) 1) 
 	 	(executed-take ?side ?expanse) 
 	 	 	  ) 
 	)  
 
	(:action roll
 	 	:irrational 
 	 	:parameters (?dish - dish ?spatial-property - spatial-property)
 	 	;:saliency (roll-saliency ?dish ?spatial-property)
 	 	:precondition (and (<= (number-executedDObIOb-roll ?dish ?spatial-property) 5) 
 	 	 	 (property-into ?spatial-property) 
 	 	 	(not (= ?dish ?spatial-property))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-roll ?dish ?spatial-property) 1) 
 	 	(executed-roll ?dish ?spatial-property) 
 	 	 	  ) 
 	)  
 
	(:action slice
 	 	:irrational 
 	 	:parameters (?dish - dish ?part - part)
 	 	;:saliency (slice-saliency ?dish ?part)
 	 	:precondition (and (<= (number-executedDObIOb-slice ?dish ?part) 5) 
 	 	 	 (property-into ?part) 
 	 	 	(not (= ?dish ?part))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-slice ?dish ?part) 1) 
 	 	(executed-slice ?dish ?part) 
 	 	 	  ) 
 	)  
 
	(:action uncover
 	 	:irrational 
 	 	:parameters (?grain - grain)
 	 	;:saliency (uncover-saliency ?grain)
 	 	:precondition (and (<= (number-executedIOb-uncover ?grain) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-uncover ?grain) 1) 
 	 	(executed-uncover ?grain) 
 	 	 	  ) 
 	)  
 
	(:action sprinkle
 	 	:irrational 
 	 	:parameters (?condiment - condiment)
 	 	;:saliency (sprinkle-saliency ?condiment)
 	 	:precondition (and (<= (number-executedIOb-sprinkle ?condiment) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-sprinkle ?condiment) 1) 
 	 	(executed-sprinkle ?condiment) 
 	 	 	  ) 
 	)  
 
	(:action sprinkle
 	 	:irrational 
 	 	:parameters (?sweetening - sweetening)
 	 	;:saliency (sprinkle-saliency ?sweetening)
 	 	:precondition (and (<= (number-executedIOb-sprinkle ?sweetening) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-sprinkle ?sweetening) 1) 
 	 	(executed-sprinkle ?sweetening) 
 	 	 	  ) 
 	)  
 
	(:action sprinkle
 	 	:irrational 
 	 	:parameters (?compound - compound)
 	 	;:saliency (sprinkle-saliency ?compound)
 	 	:precondition (and (<= (number-executedIOb-sprinkle ?compound) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-sprinkle ?compound) 1) 
 	 	(executed-sprinkle ?compound) 
 	 	 	  ) 
 	)  
 
	(:action prepare
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous)
 	 	;:saliency (prepare-saliency ?ambiguous)
 	 	:precondition (and (<= (number-executedIOb-prepare ?ambiguous) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-prepare ?ambiguous) 1) 
 	 	(executed-prepare ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action remove
 	 	:irrational 
 	 	:parameters (?form - form)
 	 	;:saliency (remove-saliency ?form)
 	 	:precondition (and (<= (number-executedIOb-remove ?form) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-remove ?form) 1) 
 	 	(executed-remove ?form) 
 	 	 	  ) 
 	)  
 
	(:action prepare
 	 	:irrational 
 	 	:parameters (?melon - melon)
 	 	;:saliency (prepare-saliency ?melon)
 	 	:precondition (and (<= (number-executedIOb-prepare ?melon) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-prepare ?melon) 1) 
 	 	(executed-prepare ?melon) 
 	 	 	  ) 
 	)  
 
	(:action prepare
 	 	:irrational 
 	 	:parameters (?edible-fruit - edible-fruit)
 	 	;:saliency (prepare-saliency ?edible-fruit)
 	 	:precondition (and (<= (number-executedIOb-prepare ?edible-fruit) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-prepare ?edible-fruit) 1) 
 	 	(executed-prepare ?edible-fruit) 
 	 	 	  ) 
 	)  
 
	(:action roll
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product)
 	 	;:saliency (roll-saliency ?dairy-product)
 	 	:precondition (and (<= (number-executedIOb-roll ?dairy-product) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-roll ?dairy-product) 1) 
 	 	(executed-roll ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action spread
 	 	:irrational 
 	 	:parameters (?grain - grain)
 	 	;:saliency (spread-saliency ?grain)
 	 	:precondition (and (<= (number-executedIOb-spread ?grain) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-spread ?grain) 1) 
 	 	(executed-spread ?grain) 
 	 	 	  ) 
 	)  
 
	(:action arrange
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product)
 	 	;:saliency (arrange-saliency ?dairy-product)
 	 	:precondition (and (<= (number-executedIOb-arrange ?dairy-product) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-arrange ?dairy-product) 1) 
 	 	(executed-arrange ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
