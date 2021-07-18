(define (domain 2ndex_BananaFrenchtoast_2) 
 
(:types 
herb - whole
food - matter
crockery - artifact
cooking-utensil - artifact
wood - material
written-record - abstraction
region - object
preservative - material
disturbance - abstraction
sweetening - foodstuff
abstraction - entity
dairy-product - foodstuff
foodstuff - food
food - substance
material - substance
substance - matter
artifact - whole
baked-goods - food
matter - physical-entity
whole - object
object - physical-entity
physical-entity - entity
in - prepositions
on - prepositions
per - prepositions
with - prepositions
) 
 
(:constants 
syrup - sweetening
stir - disturbance
spices - preservative
side - region
mixture - substance
minutes - written-record
milk - dairy-product
maple - wood
griddle - cooking-utensil
dish - crockery
breads - baked-goods
bread - baked-goods
banana - herb
mixture - in
dish - in
griddle - on
side - on
side - per
syrup - with
) 
 
(:functions 
 	 (number-executed-finished) - (number 10) 
 	(number-executedDObIOb-mash ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-dip ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cook ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-repeat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-serve ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	(number-executedIOb-give ?o - object) - (number 5) 
 	) 
 
 	(:action finished
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-finished) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-finished) 
 	 	 	(increase (number-executed-finished) 1) 
 	 	 	  ) 
 	)  
 
	(:action mash
 	 	:irrational 
 	 	:parameters (?herb - herb ?crockery - crockery)
 	 	;:saliency (mash-saliency ?herb ?crockery)
 	 	:precondition (and (<= (number-executedDObIOb-mash ?herb ?crockery) 5) 
 	 	 	 (property-in ?crockery) 
 	 	 	(not (= ?herb ?crockery))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-mash ?herb ?crockery) 1) 
 	 	(executed-mash ?herb ?crockery) 
 	 	 	  ) 
 	)  
 
	(:action dip
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods ?substance - substance)
 	 	;:saliency (dip-saliency ?baked-goods ?substance)
 	 	:precondition (and (<= (number-executedDObIOb-dip ?baked-goods ?substance) 5) 
 	 	 	 (property-in ?substance) 
 	 	 	(not (= ?baked-goods ?substance))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-dip ?baked-goods ?substance) 1) 
 	 	(executed-dip ?baked-goods ?substance) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods ?cooking-utensil - cooking-utensil)
 	 	;:saliency (place-saliency ?baked-goods ?cooking-utensil)
 	 	:precondition (and (<= (number-executedDObIOb-place ?baked-goods ?cooking-utensil) 5) 
 	 	 	 (property-heated ?cooking-utensil) 
 	 	 	(property-on ?cooking-utensil) 
 	 	 	(not (= ?baked-goods ?cooking-utensil))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?baked-goods ?cooking-utensil) 1) 
 	 	(executed-place ?baked-goods ?cooking-utensil) 
 	 	 	  ) 
 	)  
 
	(:action cook
 	 	:irrational 
 	 	:parameters (?written-record - written-record ?region - region)
 	 	;:saliency (cook-saliency ?written-record ?region)
 	 	:precondition (and (<= (number-executedDObIOb-cook ?written-record ?region) 5) 
 	 	 	 (property-per ?region) 
 	 	 	(not (= ?written-record ?region))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cook ?written-record ?region) 1) 
 	 	(executed-cook ?written-record ?region) 
 	 	 	  ) 
 	)  
 
	(:action repeat
 	 	:irrational 
 	 	:parameters (?region1 - region ?region2 - region)
 	 	;:saliency (repeat-saliency ?region1 ?region2)
 	 	:precondition (and (<= (number-executedDObIOb-repeat ?region1 ?region2) 5) 
 	 	 	 (property-other ?region1) 
 	 	 	(property-on ?region1) 
 	 	 	(not (= ?region1 ?region2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-repeat ?region1 ?region2) 1) 
 	 	(executed-repeat ?region1 ?region2) 
 	 	 	  ) 
 	)  
 
	(:action serve
 	 	:irrational 
 	 	:parameters (?sweetening1 - sweetening ?sweetening2 - sweetening)
 	 	;:saliency (serve-saliency ?sweetening1 ?sweetening2)
 	 	:precondition (and (<= (number-executedDObIOb-serve ?sweetening1 ?sweetening2) 5) 
 	 	 	 (property-pure ?sweetening1) 
 	 	 	(property-with ?sweetening1) 
 	 	 	(not (= ?sweetening1 ?sweetening2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-serve ?sweetening1 ?sweetening2) 1) 
 	 	(executed-serve ?sweetening1 ?sweetening2) 
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
 	 	:parameters (?preservative - preservative)
 	 	;:saliency (add-saliency ?preservative)
 	 	:precondition (and (<= (number-executedIOb-add ?preservative) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?preservative) 1) 
 	 	(executed-add ?preservative) 
 	 	 	  ) 
 	)  
 
	(:action give
 	 	:irrational 
 	 	:parameters (?disturbance - disturbance)
 	 	;:saliency (give-saliency ?disturbance)
 	 	:precondition (and (<= (number-executedIOb-give ?disturbance) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-give ?disturbance) 1) 
 	 	(executed-give ?disturbance) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
