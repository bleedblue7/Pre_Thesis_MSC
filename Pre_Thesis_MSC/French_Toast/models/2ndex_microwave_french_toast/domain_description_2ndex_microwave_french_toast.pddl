(define (domain 2ndex_microwave_french_toast) 
 
(:types 
whole - physical-entity
instrumentality - whole
vessel - instrumentality
food - matter
food - matter
sweetening - food
reproductive-structure - whole
degree - abstraction
electromagnetic-radiation - physical-entity
written-record - abstraction
base - instrumentality
engineering - abstraction
abstraction - entity
baked-goods - food
matter - physical-entity
physical-entity - entity
for - prepositions
in - prepositions
into - prepositions
on - prepositions
) 
 
(:constants 
it - engineering
syrup - sweetening
plate - base
mixture - substance
minutes - written-record
microwave - electromagnetic-radiation
high - degree
fruit - reproductive-structure
eggs - foodstuff
breads - baked-goods
bread - baked-goods
bowl - vessel
minutes - for
mixture - in
it - into
plate - on
high - on
) 
 
(:functions 
 	 (number-executed-serve) - (number 10) 
 	(number-executed-continue) - (number 10) 
 	(number-executedDObIOb-break ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-soak ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-set ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-set ?o - object) - (number 5) 
 	(number-executedIOb-flip ?o - object) - (number 5) 
 	(number-executedIOb-put ?o - object) - (number 5) 
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
 
	(:action continue
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-continue) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-continue) 
 	 	 	(increase (number-executed-continue) 1) 
 	 	 	  ) 
 	)  
 
	(:action break
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff ?engineering - engineering)
 	 	;:saliency (break-saliency ?foodstuff ?engineering)
 	 	:precondition (and (<= (number-executedDObIOb-break ?foodstuff ?engineering) 5) 
 	 	 	 (property-into ?engineering) 
 	 	 	(not (= ?foodstuff ?engineering))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-break ?foodstuff ?engineering) 1) 
 	 	(executed-break ?foodstuff ?engineering) 
 	 	 	  ) 
 	)  
 
	(:action soak
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods ?substance - substance)
 	 	;:saliency (soak-saliency ?baked-goods ?substance)
 	 	:precondition (and (<= (number-executedDObIOb-soak ?baked-goods ?substance) 5) 
 	 	 	 (property-wet ?substance) 
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
 	 	 	 (property-wet ?baked-goods) 
 	 	 	(property-microwavable ?base) 
 	 	 	(property-on ?base) 
 	 	 	(not (= ?baked-goods ?base))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?baked-goods ?base) 1) 
 	 	(executed-place ?baked-goods ?base) 
 	 	 	  ) 
 	)  
 
	(:action set
 	 	:irrational 
 	 	:parameters (?electromagnetic-radiation - electromagnetic-radiation ?degree - degree)
 	 	;:saliency (set-saliency ?electromagnetic-radiation ?degree)
 	 	:precondition (and (<= (number-executedDObIOb-set ?electromagnetic-radiation ?degree) 5) 
 	 	 	 (property-on ?degree) 
 	 	 	(not (= ?electromagnetic-radiation ?degree))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-set ?electromagnetic-radiation ?degree) 1) 
 	 	(executed-set ?electromagnetic-radiation ?degree) 
 	 	 	  ) 
 	)  
 
	(:action set
 	 	:irrational 
 	 	:parameters (?vessel - vessel)
 	 	;:saliency (set-saliency ?vessel)
 	 	:precondition (and (<= (number-executedIOb-set ?vessel) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-set ?vessel) 1) 
 	 	(executed-set ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action flip
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods)
 	 	;:saliency (flip-saliency ?baked-goods)
 	 	:precondition (and (<= (number-executedIOb-flip ?baked-goods) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-flip ?baked-goods) 1) 
 	 	(executed-flip ?baked-goods) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?sweetening - sweetening)
 	 	;:saliency (put-saliency ?sweetening)
 	 	:precondition (and (<= (number-executedIOb-put ?sweetening) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-continue) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-put ?sweetening) 1) 
 	 	(executed-put ?sweetening) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?reproductive-structure - reproductive-structure)
 	 	;:saliency (put-saliency ?reproductive-structure)
 	 	:precondition (and (<= (number-executedIOb-put ?reproductive-structure) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-continue) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-put ?reproductive-structure) 1) 
 	 	(executed-put ?reproductive-structure) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
