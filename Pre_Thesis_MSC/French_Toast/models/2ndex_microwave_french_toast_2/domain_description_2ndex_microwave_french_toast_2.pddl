(define (domain 2ndex_microwave_french_toast_2) 
 
(:types 
instrumentality - whole
vessel - instrumentality
food - matter
bark - whole
ovum - living-thing
degree - abstraction
food - matter
time-unit - abstraction
base - instrumentality
region - object
share - abstraction
sweetening - foodstuff
orchid - living-thing
engineering - abstraction
dairy-product - foodstuff
foodstuff - food
abstraction - entity
living-thing - whole
baked-goods - food
matter - physical-entity
whole - object
object - physical-entity
physical-entity - entity
ambiguous - entity
for - prepositions
in - prepositions
of - prepositions
on - prepositions
with - prepositions
) 
 
(:constants 
them - ambiguous
it - engineering
vanilla - orchid
syrup - sweetening
slices - share
side - region
plate - base
mixture - substance
minute - time-unit
milk - dairy-product
high - degree
egg - ovum
cinnamon - bark
bread - baked-goods
bowl - vessel
minute - for
bowl - in
mixture - in
bread - of
high - on
plate - on
syrup - with
slices - with
) 
 
(:functions 
 	 (number-executedDObIOb-put ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-soak ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-microwave ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-repeat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-garnish ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-whisk ?o - object) - (number 5) 
 	(number-executedIOb-flip ?o - object) - (number 5) 
 	(number-executedIOb-soak ?o - object) - (number 5) 
 	) 
 
 	(:action put
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?vessel - vessel)
 	 	;:saliency (put-saliency ?ambiguous ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-put ?ambiguous ?vessel) 5) 
 	 	 	 (property-in ?vessel) 
 	 	 	(not (= ?ambiguous ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?ambiguous ?vessel) 1) 
 	 	(executed-put ?ambiguous ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action soak
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods ?substance - substance)
 	 	;:saliency (soak-saliency ?baked-goods ?substance)
 	 	:precondition (and (<= (number-executedDObIOb-soak ?baked-goods ?substance) 5) 
 	 	 	 (property-in ?substance) 
 	 	 	(not (= ?baked-goods ?substance))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-soak ?baked-goods ?substance) 1) 
 	 	(executed-soak ?baked-goods ?substance) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods ?base - base)
 	 	;:saliency (place-saliency ?baked-goods ?base)
 	 	:precondition (and (<= (number-executedDObIOb-place ?baked-goods ?base) 5) 
 	 	 	 (property-eggy ?baked-goods) 
 	 	 	(property-microwavable ?base) 
 	 	 	(property-on ?base) 
 	 	 	(not (= ?baked-goods ?base))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?baked-goods ?base) 1) 
 	 	(executed-place ?baked-goods ?base) 
 	 	 	  ) 
 	)  
 
	(:action microwave
 	 	:irrational 
 	 	:parameters (?time-unit - time-unit ?degree - degree)
 	 	;:saliency (microwave-saliency ?time-unit ?degree)
 	 	:precondition (and (<= (number-executedDObIOb-microwave ?time-unit ?degree) 5) 
 	 	 	 (property-for ?time-unit) 
 	 	 	(property-on ?degree) 
 	 	 	(not (= ?time-unit ?degree))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-microwave ?time-unit ?degree) 1) 
 	 	(executed-microwave ?time-unit ?degree) 
 	 	 	  ) 
 	)  
 
	(:action repeat
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods ?share - share)
 	 	;:saliency (repeat-saliency ?baked-goods ?share)
 	 	:precondition (and (<= (number-executedDObIOb-repeat ?baked-goods ?share) 5) 
 	 	 	 (property-other ?share) 
 	 	 	(property-of ?baked-goods) 
 	 	 	(property-with ?share) 
 	 	 	(not (= ?baked-goods ?share))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-repeat ?baked-goods ?share) 1) 
 	 	(executed-repeat ?baked-goods ?share) 
 	 	 	  ) 
 	)  
 
	(:action garnish
 	 	:irrational 
 	 	:parameters (?sweetening1 - sweetening ?sweetening2 - sweetening)
 	 	;:saliency (garnish-saliency ?sweetening1 ?sweetening2)
 	 	:precondition (and (<= (number-executedDObIOb-garnish ?sweetening1 ?sweetening2) 5) 
 	 	 	 (property-with ?sweetening1) 
 	 	 	(not (= ?sweetening1 ?sweetening2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-garnish ?sweetening1 ?sweetening2) 1) 
 	 	(executed-garnish ?sweetening1 ?sweetening2) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product)
 	 	;:saliency (whisk-saliency ?dairy-product)
 	 	:precondition (and (<= (number-executedIOb-whisk ?dairy-product) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?dairy-product) 1) 
 	 	(executed-whisk ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?ovum - ovum)
 	 	;:saliency (whisk-saliency ?ovum)
 	 	:precondition (and (<= (number-executedIOb-whisk ?ovum) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?ovum) 1) 
 	 	(executed-whisk ?ovum) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?orchid - orchid)
 	 	;:saliency (whisk-saliency ?orchid)
 	 	:precondition (and (<= (number-executedIOb-whisk ?orchid) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?orchid) 1) 
 	 	(executed-whisk ?orchid) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?bark - bark)
 	 	;:saliency (whisk-saliency ?bark)
 	 	:precondition (and (<= (number-executedIOb-whisk ?bark) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?bark) 1) 
 	 	(executed-whisk ?bark) 
 	 	 	  ) 
 	)  
 
	(:action flip
 	 	:irrational 
 	 	:parameters (?engineering - engineering)
 	 	;:saliency (flip-saliency ?engineering)
 	 	:precondition (and (<= (number-executedIOb-flip ?engineering) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-flip ?engineering) 1) 
 	 	(executed-flip ?engineering) 
 	 	 	  ) 
 	)  
 
	(:action soak
 	 	:irrational 
 	 	:parameters (?region - region)
 	 	;:saliency (soak-saliency ?region)
 	 	:precondition (and (<= (number-executedIOb-soak ?region) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-soak ?region) 1) 
 	 	(executed-soak ?region) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
