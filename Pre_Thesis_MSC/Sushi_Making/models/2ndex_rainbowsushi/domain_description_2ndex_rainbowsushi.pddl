(define (domain 2ndex_rainbowsushi) 
 
(:types 
substance - physical-entity
wood - substance
event - abstraction
guardianship - event
grain - food
rotation - event
expanse - abstraction
dish - food
region - object
garnish - whole
herb - whole
whole - object
object - physical-entity
food - substance
abstraction - entity
physical-entity - entity
ambiguous - entity
of - prepositions
on - prepositions
poss - prepositions
) 
 
(:constants 
your - ambiguous
wasabi - herb
toppings - garnish
top - region
sushi - dish
sheet - expanse
roll - rotation
rice - grain
nori - ambiguous
hands - guardianship
fillings - material
bamboo - wood
roll - of
sheet - on
your - poss
) 
 
(:functions 
 	 (number-executed-roll) - (number 10) 
 	(number-executed-cut) - (number 10) 
 	(number-executed-color) - (number 10) 
 	(number-executedDObIOb-wet ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-top ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-spread ?o - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	(number-executedIOb-press ?o - object) - (number 5) 
 	) 
 
 	(:action roll
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-roll) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-roll) 
 	 	 	(increase (number-executed-roll) 1) 
 	 	 	  ) 
 	)  
 
	(:action cut
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-cut) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-cut) 
 	 	 	(increase (number-executed-cut) 1) 
 	 	 	  ) 
 	)  
 
	(:action color
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-color) 10) 
 	 	 	(executed-roll) 
 	 	 	
 ) 
 	 	:effect (and (executed-color) 
 	 	 	(increase (number-executed-color) 1) 
 	 	 	  ) 
 	)  
 
	(:action wet
 	 	:irrational 
 	 	:parameters (?guardianship - guardianship ?ambiguous - ambiguous)
 	 	;:saliency (wet-saliency ?guardianship ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-wet ?guardianship ?ambiguous) 5) 
 	 	 	 (property-poss ?ambiguous) 
 	 	 	(not (= ?guardianship ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-wet ?guardianship ?ambiguous) 1) 
 	 	(executed-wet ?guardianship ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?expanse - expanse)
 	 	;:saliency (place-saliency ?ambiguous ?expanse)
 	 	:precondition (and (<= (number-executedDObIOb-place ?ambiguous ?expanse) 5) 
 	 	 	 (property-on ?expanse) 
 	 	 	(not (= ?ambiguous ?expanse))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?ambiguous ?expanse) 1) 
 	 	(executed-place ?ambiguous ?expanse) 
 	 	 	  ) 
 	)  
 
	(:action top
 	 	:irrational 
 	 	:parameters (?rotation1 - rotation ?rotation2 - rotation)
 	 	;:saliency (top-saliency ?rotation1 ?rotation2)
 	 	:precondition (and (<= (number-executedDObIOb-top ?rotation1 ?rotation2) 5) 
 	 	 	 (property-of ?rotation1) 
 	 	 	(not (= ?rotation1 ?rotation2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-top ?rotation1 ?rotation2) 1) 
 	 	(executed-top ?rotation1 ?rotation2) 
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
 
	(:action spread
 	 	:irrational 
 	 	:parameters (?herb - herb)
 	 	;:saliency (spread-saliency ?herb)
 	 	:precondition (and (<= (number-executedIOb-spread ?herb) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-spread ?herb) 1) 
 	 	(executed-spread ?herb) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?material - material)
 	 	;:saliency (add-saliency ?material)
 	 	:precondition (and (<= (number-executedIOb-add ?material) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?material) 1) 
 	 	(executed-add ?material) 
 	 	 	  ) 
 	)  
 
	(:action press
 	 	:irrational 
 	 	:parameters (?garnish - garnish)
 	 	;:saliency (press-saliency ?garnish)
 	 	:precondition (and (<= (number-executedIOb-press ?garnish) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-color) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-press ?garnish) 1) 
 	 	(executed-press ?garnish) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
