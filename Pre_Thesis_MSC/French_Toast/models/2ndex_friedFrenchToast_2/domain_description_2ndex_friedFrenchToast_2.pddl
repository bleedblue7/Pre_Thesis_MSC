(define (domain 2ndex_friedFrenchToast_2) 
 
(:types 
whole - physical-entity
instrumentality - whole
vessel - instrumentality
food - matter
bread - food
ovum - whole
chicken - food
written-record - abstraction
lipid - physical-entity
base - instrumentality
compound - substance
sweetening - foodstuff
degree - abstraction
abstraction - entity
dairy-product - foodstuff
foodstuff - food
food - substance
substance - matter
matter - physical-entity
physical-entity - entity
ambiguous - entity
in - prepositions
on - prepositions
to - prepositions
) 
 
(:constants 
them - ambiguous
deepfryer - ambiguous
f - degree
toast - bread
sugar - sweetening
salt - compound
plate - base
oil - lipid
mixture - substance
minutes - written-record
milk - dairy-product
fryer - chicken
flour - foodstuff
eggs - foodstuff
egg - ovum
deep-fryer - ambiguous
breads - baked-goods
bowl - vessel
deepfryer - in
fryer - in
mixture - in
milk - in
plate - on
f - to
) 
 
(:functions 
 	 (number-executed-serve) - (number 10) 
 	(number-executed-heat) - (number 10) 
 	(number-executedDObIOb-soak ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-drain ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-whisk ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-oil ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-fryer ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cook ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-beat ?o - object) - (number 5) 
 	(number-executedIOb-put ?o - object) - (number 5) 
 	(number-executedIOb-mixing ?o - object) - (number 5) 
 	(number-executedIOb-whisk ?o - object) - (number 5) 
 	(number-executedIOb-wipe ?o - object) - (number 5) 
 	(number-executedIOb-cook ?o - object) - (number 5) 
 	(number-executedIOb-whisk ?o - object) - (number 5) 
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
 
	(:action soak
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods ?substance - substance)
 	 	;:saliency (soak-saliency ?baked-goods ?substance)
 	 	:precondition (and (<= (number-executedDObIOb-soak ?baked-goods ?substance) 5) 
 	 	 	 (property-in ?substance) 
 	 	 	(not (= ?baked-goods ?substance))
	 	 	 (not (finished)) 
 	 	 	(executed-heat) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-soak ?baked-goods ?substance) 1) 
 	 	(executed-soak ?baked-goods ?substance) 
 	 	 	  ) 
 	)  
 
	(:action drain
 	 	:irrational 
 	 	:parameters (?bread - bread ?base - base)
 	 	;:saliency (drain-saliency ?bread ?base)
 	 	:precondition (and (<= (number-executedDObIOb-drain ?bread ?base) 5) 
 	 	 	 (property-french ?bread) 
 	 	 	(property-on ?base) 
 	 	 	(not (= ?bread ?base))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-drain ?bread ?base) 1) 
 	 	(executed-drain ?bread ?base) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?dairy-product1 - dairy-product ?dairy-product2 - dairy-product)
 	 	;:saliency (whisk-saliency ?dairy-product1 ?dairy-product2)
 	 	:precondition (and (<= (number-executedDObIOb-whisk ?dairy-product1 ?dairy-product2) 5) 
 	 	 	 (property-in ?dairy-product1) 
 	 	 	(not (= ?dairy-product1 ?dairy-product2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-whisk ?dairy-product1 ?dairy-product2) 1) 
 	 	(executed-whisk ?dairy-product1 ?dairy-product2) 
 	 	 	  ) 
 	)  
 
	(:action oil
 	 	:irrational 
 	 	:parameters (?chicken1 - chicken ?chicken2 - chicken)
 	 	;:saliency (oil-saliency ?chicken1 ?chicken2)
 	 	:precondition (and (<= (number-executedDObIOb-oil ?chicken1 ?chicken2) 5) 
 	 	 	 (property-in ?chicken1) 
 	 	 	(not (= ?chicken1 ?chicken2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-oil ?chicken1 ?chicken2) 1) 
 	 	(executed-oil ?chicken1 ?chicken2) 
 	 	 	  ) 
 	)  
 
	(:action fryer
 	 	:irrational 
 	 	:parameters (?degree1 - degree ?degree2 - degree)
 	 	;:saliency (fryer-saliency ?degree1 ?degree2)
 	 	:precondition (and (<= (number-executedDObIOb-fryer ?degree1 ?degree2) 5) 
 	 	 	 (property-in) 
 	 	 	(property-to ?degree1) 
 	 	 	(not (= ?degree1 ?degree2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-fryer ?degree1 ?degree2) 1) 
 	 	(executed-fryer ?degree1 ?degree2) 
 	 	 	  ) 
 	)  
 
	(:action cook
 	 	:irrational 
 	 	:parameters (?ambiguous1 - ambiguous ?ambiguous2 - ambiguous)
 	 	;:saliency (cook-saliency ?ambiguous1 ?ambiguous2)
 	 	:precondition (and (<= (number-executedDObIOb-cook ?ambiguous1 ?ambiguous2) 5) 
 	 	 	 (property-in ?ambiguous1) 
 	 	 	(not (= ?ambiguous1 ?ambiguous2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cook ?ambiguous1 ?ambiguous2) 1) 
 	 	(executed-cook ?ambiguous1 ?ambiguous2) 
 	 	 	  ) 
 	)  
 
	(:action beat
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff)
 	 	;:saliency (beat-saliency ?foodstuff)
 	 	:precondition (and (<= (number-executedIOb-beat ?foodstuff) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-beat ?foodstuff) 1) 
 	 	(executed-beat ?foodstuff) 
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
 
	(:action beat
 	 	:irrational 
 	 	:parameters (?compound - compound)
 	 	;:saliency (beat-saliency ?compound)
 	 	:precondition (and (<= (number-executedIOb-beat ?compound) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-beat ?compound) 1) 
 	 	(executed-beat ?compound) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous)
 	 	;:saliency (put-saliency ?ambiguous)
 	 	:precondition (and (<= (number-executedIOb-put ?ambiguous) 5) 
 	 	 	 (property-mixing) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-put ?ambiguous) 1) 
 	 	(executed-put ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action mixing
 	 	:irrational 
 	 	:parameters (?vessel - vessel)
 	 	;:saliency (mixing-saliency ?vessel)
 	 	:precondition (and (<= (number-executedIOb-mixing ?vessel) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-mixing ?vessel) 1) 
 	 	(executed-mixing ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff)
 	 	;:saliency (whisk-saliency ?foodstuff)
 	 	:precondition (and (<= (number-executedIOb-whisk ?foodstuff) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?foodstuff) 1) 
 	 	(executed-whisk ?foodstuff) 
 	 	 	  ) 
 	)  
 
	(:action wipe
 	 	:irrational 
 	 	:parameters (?ovum - ovum)
 	 	;:saliency (wipe-saliency ?ovum)
 	 	:precondition (and (<= (number-executedIOb-wipe ?ovum) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-wipe ?ovum) 1) 
 	 	(executed-wipe ?ovum) 
 	 	 	  ) 
 	)  
 
	(:action cook
 	 	:irrational 
 	 	:parameters (?written-record - written-record)
 	 	;:saliency (cook-saliency ?written-record)
 	 	:precondition (and (<= (number-executedIOb-cook ?written-record) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-cook ?written-record) 1) 
 	 	(executed-cook ?written-record) 
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
 
	(:action cook
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous)
 	 	;:saliency (cook-saliency ?ambiguous)
 	 	:precondition (and (<= (number-executedIOb-cook ?ambiguous) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-cook ?ambiguous) 1) 
 	 	(executed-cook ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
