(define (domain 2ndex_BananaFrenchtoast) 
 
(:types 
whole - physical-entity
herb - organism
ballplayer - organism
kitchen-utensil - whole
food - matter
bread - food
bark - whole
ovum - living-thing
energy - physical-entity
food - matter
dairy-product - food
pan - kitchen-utensil
matter - physical-entity
mixer - kitchen-utensil
organism - living-thing
living-thing - whole
physical-entity - entity
ambiguous - entity
in - prepositions
to - prepositions
with - prepositions
) 
 
(:constants 
toast - baked-goods
whites - person
thevanilla - ambiguous
skillet - pan
mixture - substance
milk - dairy-product
medium - instrumentality
heat - energy
egg - ovum
cinnamon - bark
blender - mixer
batter - ballplayer
bananas - herb
skillet - in
batter - in
heat - to
cinnamon - with
) 
 
(:functions 
 	 (number-executed-heat) - (number 10) 
 	(number-executedDObIOb-garnish ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-skillet ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-make ?o - object) - (number 5) 
 	(number-executedIOb-take ?o - object) - (number 5) 
 	(number-executedIOb-combine ?o - object) - (number 5) 
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
 
	(:action garnish
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods ?bark - bark)
 	 	;:saliency (garnish-saliency ?baked-goods ?bark)
 	 	:precondition (and (<= (number-executedDObIOb-garnish ?baked-goods ?bark) 5) 
 	 	 	 (property-french ?baked-goods) 
 	 	 	(property-with ?bark) 
 	 	 	(not (= ?baked-goods ?bark))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-garnish ?baked-goods ?bark) 1) 
 	 	(executed-garnish ?baked-goods ?bark) 
 	 	 	  ) 
 	)  
 
	(:action skillet
 	 	:irrational 
 	 	:parameters (?energy1 - energy ?energy2 - energy)
 	 	;:saliency (skillet-saliency ?energy1 ?energy2)
 	 	:precondition (and (<= (number-executedDObIOb-skillet ?energy1 ?energy2) 5) 
 	 	 	 (property-to ?energy1) 
 	 	 	(not (= ?energy1 ?energy2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-skillet ?energy1 ?energy2) 1) 
 	 	(executed-skillet ?energy1 ?energy2) 
 	 	 	  ) 
 	)  
 
	(:action make
 	 	:irrational 
 	 	:parameters (?substance - substance)
 	 	;:saliency (make-saliency ?substance)
 	 	:precondition (and (<= (number-executedIOb-make ?substance) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-make ?substance) 1) 
 	 	(executed-make ?substance) 
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
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product)
 	 	;:saliency (combine-saliency ?dairy-product)
 	 	:precondition (and (<= (number-executedIOb-combine ?dairy-product) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-combine ?dairy-product) 1) 
 	 	(executed-combine ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?ovum - ovum)
 	 	;:saliency (combine-saliency ?ovum)
 	 	:precondition (and (<= (number-executedIOb-combine ?ovum) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-combine ?ovum) 1) 
 	 	(executed-combine ?ovum) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?person - person)
 	 	;:saliency (combine-saliency ?person)
 	 	:precondition (and (<= (number-executedIOb-combine ?person) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-combine ?person) 1) 
 	 	(executed-combine ?person) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?herb - herb)
 	 	;:saliency (combine-saliency ?herb)
 	 	:precondition (and (<= (number-executedIOb-combine ?herb) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-combine ?herb) 1) 
 	 	(executed-combine ?herb) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous)
 	 	;:saliency (combine-saliency ?ambiguous)
 	 	:precondition (and (<= (number-executedIOb-combine ?ambiguous) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-combine ?ambiguous) 1) 
 	 	(executed-combine ?ambiguous) 
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
