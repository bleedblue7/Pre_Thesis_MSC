(define (domain 2ndex_sushi2) 
 
(:types 
food - matter
edible-fruit - food
wood - substance
whole - physical-entity
implement - artifact
edge-tool - implement
floor-cover - artifact
bat - implement
organism - whole
salmonid - organism
condiment - foodstuff
alga - organism
expanse - abstraction
legume - organism
dish - food
engineering - abstraction
abstraction - entity
grain - foodstuff
artifact - whole
dairy-product - foodstuff
foodstuff - food
food - substance
substance - matter
matter - physical-entity
physical-entity - entity
of - prepositions
on - prepositions
with - prepositions
) 
 
(:constants 
it - engineering
sushi - dish
soya - legume
sheet - expanse
seaweed - alga
sauce - condiment
salmon - salmonid
rice - grain
paddle - bat
mat - floor-cover
knife - edge-tool
cheese - dairy-product
bamboo - wood
avocado - edible-fruit
seaweed - of
rice - on
mat - on
rice - with
sauce - with
knife - with
paddle - with
) 
 
(:functions 
 	 (number-executed-cream) - (number 10) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cover ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-layer ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-smooth ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-slice ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-serve ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-layer ?o - object) - (number 5) 
 	(number-executedIOb-roll ?o - object) - (number 5) 
 	) 
 
 	(:action cream
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-cream) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-cream) 
 	 	 	(increase (number-executed-cream) 1) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?alga - alga ?floor-cover - floor-cover)
 	 	;:saliency (place-saliency ?alga ?floor-cover)
 	 	:precondition (and (<= (number-executedDObIOb-place ?alga ?floor-cover) 5) 
 	 	 	 (property-on ?floor-cover) 
 	 	 	(not (= ?alga ?floor-cover))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?alga ?floor-cover) 1) 
 	 	(executed-place ?alga ?floor-cover) 
 	 	 	  ) 
 	)  
 
	(:action cover
 	 	:irrational 
 	 	:parameters (?expanse - expanse ?alga - alga)
 	 	;:saliency (cover-saliency ?expanse ?alga)
 	 	:precondition (and (<= (number-executedDObIOb-cover ?expanse ?alga) 5) 
 	 	 	 (property-of ?alga) 
 	 	 	(not (= ?expanse ?alga))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cover ?expanse ?alga) 1) 
 	 	(executed-cover ?expanse ?alga) 
 	 	 	  ) 
 	)  
 
	(:action cover
 	 	:irrational 
 	 	:parameters (?expanse - expanse ?grain - grain)
 	 	;:saliency (cover-saliency ?expanse ?grain)
 	 	:precondition (and (<= (number-executedDObIOb-cover ?expanse ?grain) 5) 
 	 	 	 (property-with ?grain) 
 	 	 	(not (= ?expanse ?grain))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cover ?expanse ?grain) 1) 
 	 	(executed-cover ?expanse ?grain) 
 	 	 	  ) 
 	)  
 
	(:action layer
 	 	:irrational 
 	 	:parameters (?edible-fruit - edible-fruit ?grain - grain)
 	 	;:saliency (layer-saliency ?edible-fruit ?grain)
 	 	:precondition (and (<= (number-executedDObIOb-layer ?edible-fruit ?grain) 5) 
 	 	 	 (property-on ?grain) 
 	 	 	(not (= ?edible-fruit ?grain))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-layer ?edible-fruit ?grain) 1) 
 	 	(executed-layer ?edible-fruit ?grain) 
 	 	 	  ) 
 	)  
 
	(:action smooth
 	 	:irrational 
 	 	:parameters (?bat1 - bat ?bat2 - bat)
 	 	;:saliency (smooth-saliency ?bat1 ?bat2)
 	 	:precondition (and (<= (number-executedDObIOb-smooth ?bat1 ?bat2) 5) 
 	 	 	 (property-with ?bat1) 
 	 	 	(not (= ?bat1 ?bat2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-smooth ?bat1 ?bat2) 1) 
 	 	(executed-smooth ?bat1 ?bat2) 
 	 	 	  ) 
 	)  
 
	(:action slice
 	 	:irrational 
 	 	:parameters (?edge-tool1 - edge-tool ?edge-tool2 - edge-tool)
 	 	;:saliency (slice-saliency ?edge-tool1 ?edge-tool2)
 	 	:precondition (and (<= (number-executedDObIOb-slice ?edge-tool1 ?edge-tool2) 5) 
 	 	 	 (property-sharp ?edge-tool1) 
 	 	 	(property-with ?edge-tool1) 
 	 	 	(not (= ?edge-tool1 ?edge-tool2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-slice ?edge-tool1 ?edge-tool2) 1) 
 	 	(executed-slice ?edge-tool1 ?edge-tool2) 
 	 	 	  ) 
 	)  
 
	(:action serve
 	 	:irrational 
 	 	:parameters (?condiment1 - condiment ?condiment2 - condiment)
 	 	;:saliency (serve-saliency ?condiment1 ?condiment2)
 	 	:precondition (and (<= (number-executedDObIOb-serve ?condiment1 ?condiment2) 5) 
 	 	 	 (property-with ?condiment1) 
 	 	 	(not (= ?condiment1 ?condiment2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-serve ?condiment1 ?condiment2) 1) 
 	 	(executed-serve ?condiment1 ?condiment2) 
 	 	 	  ) 
 	)  
 
	(:action layer
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product)
 	 	;:saliency (layer-saliency ?dairy-product)
 	 	:precondition (and (<= (number-executedIOb-layer ?dairy-product) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-layer ?dairy-product) 1) 
 	 	(executed-layer ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action roll
 	 	:irrational 
 	 	:parameters (?engineering - engineering)
 	 	;:saliency (roll-saliency ?engineering)
 	 	:precondition (and (<= (number-executedIOb-roll ?engineering) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-roll ?engineering) 1) 
 	 	(executed-roll ?engineering) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
