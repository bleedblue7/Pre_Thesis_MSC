(define (domain 2ndex_friedFrenchToast) 
 
(:types 
whole - physical-entity
vessel - instrumentality
food - matter
bread - food
bark - whole
ovum - living-thing
food - matter
dairy-product - food
energy - physical-entity
cooking-utensil - instrumentality
base - instrumentality
share - entity
kitchen-appliance - artifact
orchid - living-thing
living-thing - whole
matter - physical-entity
instrumentality - artifact
artifact - whole
physical-entity - entity
into - prepositions
on - prepositions
onto - prepositions
to - prepositions
with - prepositions
) 
 
(:constants 
toast - baked-goods
vanilla - orchid
stove - kitchen-appliance
slice - share
plate - base
pan - cooking-utensil
mixture - substance
milk - dairy-product
medium - instrumentality
heat - energy
eggs - foodstuff
egg - ovum
cinnamon - bark
bowl - vessel
mixture - into
bowl - into
plate - on
pan - onto
medium - to
heat - to
mixture - with
) 
 
(:functions 
 	 (number-executed-serve) - (number 10) 
 	(number-executed-heat) - (number 10) 
 	(number-executed-extract) - (number 10) 
 	(number-executed-crack) - (number 10) 
 	(number-executedDObIOb-set ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-put ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	(number-executedIOb-turn ?o - object) - (number 5) 
 	(number-executedIOb-cook ?o - object) - (number 5) 
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
 
	(:action extract
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-extract) 10) 
 	 	 	(executed-crack) 
 	 	 	
 ) 
 	 	:effect (and (executed-extract) 
 	 	 	(increase (number-executed-extract) 1) 
 	 	 	  ) 
 	)  
 
	(:action crack
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-crack) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-crack) 
 	 	 	(increase (number-executed-crack) 1) 
 	 	 	  ) 
 	)  
 
	(:action set
 	 	:irrational 
 	 	:parameters (?kitchen-appliance - kitchen-appliance ?energy - energy)
 	 	;:saliency (set-saliency ?kitchen-appliance ?energy)
 	 	:precondition (and (<= (number-executedDObIOb-set ?kitchen-appliance ?energy) 5) 
 	 	 	 (property-to ?energy) 
 	 	 	(not (= ?kitchen-appliance ?energy))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-set ?kitchen-appliance ?energy) 1) 
 	 	(executed-set ?kitchen-appliance ?energy) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?share - share ?cooking-utensil - cooking-utensil)
 	 	;:saliency (place-saliency ?share ?cooking-utensil)
 	 	:precondition (and (<= (number-executedDObIOb-place ?share ?cooking-utensil) 5) 
 	 	 	 (property-onto ?cooking-utensil) 
 	 	 	(not (= ?share ?cooking-utensil))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?share ?cooking-utensil) 1) 
 	 	(executed-place ?share ?cooking-utensil) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods ?base - base)
 	 	;:saliency (put-saliency ?baked-goods ?base)
 	 	:precondition (and (<= (number-executedDObIOb-put ?baked-goods ?base) 5) 
 	 	 	 (property-on ?base) 
 	 	 	(not (= ?baked-goods ?base))
	 	 	 (not (finished)) 
 	 	 	(executed-cook ?baked-goods) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?baked-goods ?base) 1) 
 	 	(executed-put ?baked-goods ?base) 
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
 	 	:parameters (?bark - bark)
 	 	;:saliency (add-saliency ?bark)
 	 	:precondition (and (<= (number-executedIOb-add ?bark) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?bark) 1) 
 	 	(executed-add ?bark) 
 	 	 	  ) 
 	)  
 
	(:action turn
 	 	:irrational 
 	 	:parameters (?energy - energy)
 	 	;:saliency (turn-saliency ?energy)
 	 	:precondition (and (<= (number-executedIOb-turn ?energy) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-turn ?energy) 1) 
 	 	(executed-turn ?energy) 
 	 	 	  ) 
 	)  
 
	(:action cook
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods)
 	 	;:saliency (cook-saliency ?baked-goods)
 	 	:precondition (and (<= (number-executedIOb-cook ?baked-goods) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-cook ?baked-goods) 1) 
 	 	(executed-cook ?baked-goods) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
