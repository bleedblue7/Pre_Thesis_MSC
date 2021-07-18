(define (domain 2ndex_VeganFrenchtoast) 
 
(:types 
food - matter
edible-fruit - food
whole - physical-entity
instrumentality - whole
vessel - instrumentality
bread - food
energy - physical-entity
wood - substance
pan - instrumentality
base - instrumentality
sweetening - foodstuff
orchid - whole
dairy-product - foodstuff
foodstuff - food
food - substance
substance - matter
matter - physical-entity
physical-entity - entity
ambiguous - entity
from - prepositions
into - prepositions
on - prepositions
over - prepositions
) 
 
(:constants 
toast - baked-goods
skillet - cooking-utensil
vanilla - orchid
syrup - sweetening
plate - base
nonstick - ambiguous
mixture - substance
milk - dairy-product
medium - instrumentality
maple - wood
heat - energy
butter - dairy-product
bowl - vessel
berries - edible-fruit
pan - from
mixture - into
skillet - into
plate - on
heat - on
heat - over
) 
 
(:functions 
 	 (number-executed-shaved) - (number 10) 
 	(number-executed-heat) - (number 10) 
 	(number-executed-cool) - (number 10) 
 	(number-executedDObIOb-remove ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-put ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-take ?o - object) - (number 5) 
 	(number-executedIOb-mix ?o - object) - (number 5) 
 	(number-executedIOb-melt ?o - object) - (number 5) 
 	) 
 
 	(:action shaved
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-shaved) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-shaved) 
 	 	 	(increase (number-executed-shaved) 1) 
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
 
	(:action cool
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-cool) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-cool) 
 	 	 	(increase (number-executed-cool) 1) 
 	 	 	  ) 
 	)  
 
	(:action remove
 	 	:irrational 
 	 	:parameters (?toast - toast ?pan - pan)
 	 	;:saliency (remove-saliency ?toast ?pan)
 	 	:precondition (and (<= (number-executedDObIOb-remove ?toast ?pan) 5) 
 	 	 	 (property-french ?toast) 
 	 	 	(property-from ?pan) 
 	 	 	(not (= ?toast ?pan))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-remove ?toast ?pan) 1) 
 	 	(executed-remove ?toast ?pan) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?energy1 - energy ?energy2 - energy)
 	 	;:saliency (put-saliency ?energy1 ?energy2)
 	 	:precondition (and (<= (number-executedDObIOb-put ?energy1 ?energy2) 5) 
 	 	 	 (property-on ?energy1) 
 	 	 	(not (= ?energy1 ?energy2))
	 	 	(not (finished)) 
 	 	 	(executed-heat) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?energy1 ?energy2) 1) 
 	 	(executed-put ?energy1 ?energy2) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?base1 - base ?base2 - base)
 	 	;:saliency (place-saliency ?base1 ?base2)
 	 	:precondition (and (<= (number-executedDObIOb-place ?base1 ?base2) 5) 
 	 	 	 (property-on ?base1) 
 	 	 	(not (= ?base1 ?base2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?base1 ?base2) 1) 
 	 	(executed-place ?base1 ?base2) 
 	 	 	  ) 
 	)  
 
	(:action take
 	 	:irrational 
 	 	:parameters (?vessel - vessel)
 	 	;:saliency (take-saliency ?vessel)
 	 	:precondition (and (<= (number-executedIOb-take ?vessel) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-take ?vessel) 1) 
 	 	(executed-take ?vessel) 
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
 
	(:action melt
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product)
 	 	;:saliency (melt-saliency ?dairy-product)
 	 	:precondition (and (<= (number-executedIOb-melt ?dairy-product) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-melt ?dairy-product) 1) 
 	 	(executed-melt ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
