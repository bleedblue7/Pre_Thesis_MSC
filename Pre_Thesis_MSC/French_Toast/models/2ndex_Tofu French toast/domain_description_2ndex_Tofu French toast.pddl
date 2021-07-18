(define (domain 2ndex_Tofu French toast) 
 
(:types 
whole - physical-entity
ballplayer - living-thing
kitchen-utensil - artifact
food - matter
food - matter
dairy-product - food
crockery - artifact
ovum - living-thing
reproductive-structure - whole
energy - physical-entity
pan - kitchen-utensil
baked-goods - food
matter - physical-entity
mixer - kitchen-utensil
artifact - whole
living-thing - whole
physical-entity - entity
ambiguous - entity
except - prepositions
in - prepositions
over - prepositions
with - prepositions
) 
 
(:constants 
skillet - pan
mixture - substance
medium - instrumentality
heat - energy
fruits - reproductive-structure
everything - ambiguous
egg - ovum
dish - crockery
butter - dairy-product
bread - baked-goods
blender - mixer
batter - ballplayer
bread - except
butter - except
skillet - in
batter - in
heat - over
fruits - with
) 
 
(:functions 
 	 (number-executed-heat) - (number 10) 
 	(number-executedDObIOb-combine ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-dip ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cook ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-serve ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-butter ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-skillet ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-make ?o - object) - (number 5) 
 	(number-executedIOb-take ?o - object) - (number 5) 
 	(number-executedIOb-allow ?o - object) - (number 5) 
 	(number-executedIOb-absorb ?o - object) - (number 5) 
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
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?baked-goods - baked-goods)
 	 	;:saliency (combine-saliency ?ambiguous ?baked-goods)
 	 	:precondition (and (<= (number-executedDObIOb-combine ?ambiguous ?baked-goods) 5) 
 	 	 	 (property-except ?baked-goods) 
 	 	 	(not (= ?ambiguous ?baked-goods))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-combine ?ambiguous ?baked-goods) 1) 
 	 	(executed-combine ?ambiguous ?baked-goods) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?dairy-product - dairy-product)
 	 	;:saliency (combine-saliency ?ambiguous ?dairy-product)
 	 	:precondition (and (<= (number-executedDObIOb-combine ?ambiguous ?dairy-product) 5) 
 	 	 	 (property-except ?dairy-product) 
 	 	 	(not (= ?ambiguous ?dairy-product))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-combine ?ambiguous ?dairy-product) 1) 
 	 	(executed-combine ?ambiguous ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action dip
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods ?ballplayer - ballplayer)
 	 	;:saliency (dip-saliency ?baked-goods ?ballplayer)
 	 	:precondition (and (<= (number-executedDObIOb-dip ?baked-goods ?ballplayer) 5) 
 	 	 	 (property-in ?ballplayer) 
 	 	 	(not (= ?baked-goods ?ballplayer))
	 	 	 (not (finished)) 
 	 	 	(executed-heat) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-dip ?baked-goods ?ballplayer) 1) 
 	 	(executed-dip ?baked-goods ?ballplayer) 
 	 	 	  ) 
 	)  
 
	(:action cook
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods ?pan - pan)
 	 	;:saliency (cook-saliency ?baked-goods ?pan)
 	 	:precondition (and (<= (number-executedDObIOb-cook ?baked-goods ?pan) 5) 
 	 	 	 (property-in ?pan) 
 	 	 	(not (= ?baked-goods ?pan))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cook ?baked-goods ?pan) 1) 
 	 	(executed-cook ?baked-goods ?pan) 
 	 	 	  ) 
 	)  
 
	(:action serve
 	 	:irrational 
 	 	:parameters (?crockery - crockery ?reproductive-structure - reproductive-structure)
 	 	;:saliency (serve-saliency ?crockery ?reproductive-structure)
 	 	:precondition (and (<= (number-executedDObIOb-serve ?crockery ?reproductive-structure) 5) 
 	 	 	 (property-fresh ?reproductive-structure) 
 	 	 	(property-with ?reproductive-structure) 
 	 	 	(not (= ?crockery ?reproductive-structure))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-serve ?crockery ?reproductive-structure) 1) 
 	 	(executed-serve ?crockery ?reproductive-structure) 
 	 	 	  ) 
 	)  
 
	(:action butter
 	 	:irrational 
 	 	:parameters (?pan1 - pan ?pan2 - pan)
 	 	;:saliency (butter-saliency ?pan1 ?pan2)
 	 	:precondition (and (<= (number-executedDObIOb-butter ?pan1 ?pan2) 5) 
 	 	 	 (property-in ?pan1) 
 	 	 	(not (= ?pan1 ?pan2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-butter ?pan1 ?pan2) 1) 
 	 	(executed-butter ?pan1 ?pan2) 
 	 	 	  ) 
 	)  
 
	(:action skillet
 	 	:irrational 
 	 	:parameters (?energy1 - energy ?energy2 - energy)
 	 	;:saliency (skillet-saliency ?energy1 ?energy2)
 	 	:precondition (and (<= (number-executedDObIOb-skillet ?energy1 ?energy2) 5) 
 	 	 	 (property-in) 
 	 	 	(property-over ?energy1) 
 	 	 	(not (= ?energy1 ?energy2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-skillet ?energy1 ?energy2) 1) 
 	 	(executed-skillet ?energy1 ?energy2) 
 	 	 	  ) 
 	)  
 
	(:action make
 	 	:irrational 
 	 	:parameters (?ballplayer - ballplayer)
 	 	;:saliency (make-saliency ?ballplayer)
 	 	:precondition (and (<= (number-executedIOb-make ?ballplayer) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-make ?ballplayer) 1) 
 	 	(executed-make ?ballplayer) 
 	 	 	  ) 
 	)  
 
	(:action take
 	 	:irrational 
 	 	:parameters (?mixer - mixer)
 	 	;:saliency (take-saliency ?mixer)
 	 	:precondition (and (<= (number-executedIOb-take ?mixer) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-take ?mixer) 1) 
 	 	(executed-take ?mixer) 
 	 	 	  ) 
 	)  
 
	(:action allow
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods)
 	 	;:saliency (allow-saliency ?baked-goods)
 	 	:precondition (and (<= (number-executedIOb-allow ?baked-goods) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-allow ?baked-goods) 1) 
 	 	(executed-allow ?baked-goods) 
 	 	 	  ) 
 	)  
 
	(:action absorb
 	 	:irrational 
 	 	:parameters (?substance - substance)
 	 	;:saliency (absorb-saliency ?substance)
 	 	:precondition (and (<= (number-executedIOb-absorb ?substance) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-absorb ?substance) 1) 
 	 	(executed-absorb ?substance) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
