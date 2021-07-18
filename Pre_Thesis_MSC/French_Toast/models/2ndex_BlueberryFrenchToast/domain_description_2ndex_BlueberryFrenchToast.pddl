(define (domain 2ndex_BlueberryFrenchToast) 
 
(:types 
whole - physical-entity
organism - whole
ballplayer - organism
vascular-plant - organism
shrub - vascular-plant
vessel - instrumentality
food - matter
crockery - artifact
written-record - abstraction
seed - whole
home-appliance - artifact
cooking-utensil - instrumentality
compound - substance
sweetening - foodstuff
orchid - vascular-plant
degree - abstraction
white-goods - home-appliance
kitchen-appliance - home-appliance
abstraction - entity
dairy-product - foodstuff
foodstuff - food
food - substance
substance - matter
baked-goods - food
matter - physical-entity
instrumentality - artifact
artifact - whole
physical-entity - entity
for - prepositions
in - prepositions
into - prepositions
to - prepositions
with - prepositions
) 
 
(:constants 
f - degree
vanilla - orchid
sugar - sweetening
salt - compound
refrigerator - white-goods
pan - cooking-utensil
oven - kitchen-appliance
nuts - seed
mixture - substance
minutes - written-record
milk - dairy-product
flour - foodstuff
eggs - foodstuff
dish - crockery
cheese - dairy-product
bread - baked-goods
bowl - vessel
blueberries - shrub
batter - ballplayer
minutes - for
refrigerator - in
mixture - into
dish - into
f - to
sugar - with
) 
 
(:functions 
 	 (number-executed-serve) - (number 10) 
 	(number-executed-cream) - (number 10) 
 	(number-executed-chill) - (number 10) 
 	(number-executedDObIOb-coat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-preheat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-garnish ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-pour ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-mixture ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-bake ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-make ?o - object) - (number 5) 
 	(number-executedIOb-take ?o - object) - (number 5) 
 	(number-executedIOb-whisk ?o - object) - (number 5) 
 	(number-executedIOb-top ?o - object) - (number 5) 
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
 
	(:action chill
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-chill) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-chill) 
 	 	 	(increase (number-executed-chill) 1) 
 	 	 	  ) 
 	)  
 
	(:action coat
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods ?substance - substance)
 	 	;:saliency (coat-saliency ?baked-goods ?substance)
 	 	:precondition (and (<= (number-executedDObIOb-coat ?baked-goods ?substance) 5) 
 	 	 	 (property-into ?substance) 
 	 	 	(not (= ?baked-goods ?substance))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-coat ?baked-goods ?substance) 1) 
 	 	(executed-coat ?baked-goods ?substance) 
 	 	 	  ) 
 	)  
 
	(:action preheat
 	 	:irrational 
 	 	:parameters (?kitchen-appliance - kitchen-appliance ?degree - degree)
 	 	;:saliency (preheat-saliency ?kitchen-appliance ?degree)
 	 	:precondition (and (<= (number-executedDObIOb-preheat ?kitchen-appliance ?degree) 5) 
 	 	 	 (property-to ?degree) 
 	 	 	(not (= ?kitchen-appliance ?degree))
	 	 	 (not (finished)) 
 	 	 	(executed-chill) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-preheat ?kitchen-appliance ?degree) 1) 
 	 	(executed-preheat ?kitchen-appliance ?degree) 
 	 	 	  ) 
 	)  
 
	(:action garnish
 	 	:irrational 
 	 	:parameters (?crockery - crockery ?sweetening - sweetening)
 	 	;:saliency (garnish-saliency ?crockery ?sweetening)
 	 	:precondition (and (<= (number-executedDObIOb-garnish ?crockery ?sweetening) 5) 
 	 	 	 (property-with ?sweetening) 
 	 	 	(not (= ?crockery ?sweetening))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-garnish ?crockery ?sweetening) 1) 
 	 	(executed-garnish ?crockery ?sweetening) 
 	 	 	  ) 
 	)  
 
	(:action pour
 	 	:irrational 
 	 	:parameters (?crockery1 - crockery ?crockery2 - crockery)
 	 	;:saliency (pour-saliency ?crockery1 ?crockery2)
 	 	:precondition (and (<= (number-executedDObIOb-pour ?crockery1 ?crockery2) 5) 
 	 	 	 (property-casserole ?crockery1) 
 	 	 	(property-into ?crockery1) 
 	 	 	(not (= ?crockery1 ?crockery2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-pour ?crockery1 ?crockery2) 1) 
 	 	(executed-pour ?crockery1 ?crockery2) 
 	 	 	  ) 
 	)  
 
	(:action mixture
 	 	:irrational 
 	 	:parameters (?white-goods1 - white-goods ?white-goods2 - white-goods)
 	 	;:saliency (mixture-saliency ?white-goods1 ?white-goods2)
 	 	:precondition (and (<= (number-executedDObIOb-mixture ?white-goods1 ?white-goods2) 5) 
 	 	 	 (property-in ?white-goods1) 
 	 	 	(not (= ?white-goods1 ?white-goods2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-mixture ?white-goods1 ?white-goods2) 1) 
 	 	(executed-mixture ?white-goods1 ?white-goods2) 
 	 	 	  ) 
 	)  
 
	(:action bake
 	 	:irrational 
 	 	:parameters (?written-record1 - written-record ?written-record2 - written-record)
 	 	;:saliency (bake-saliency ?written-record1 ?written-record2)
 	 	:precondition (and (<= (number-executedDObIOb-bake ?written-record1 ?written-record2) 5) 
 	 	 	 (property-for ?written-record1) 
 	 	 	(not (= ?written-record1 ?written-record2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-bake ?written-record1 ?written-record2) 1) 
 	 	(executed-bake ?written-record1 ?written-record2) 
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
 	 	:parameters (?vessel - vessel)
 	 	;:saliency (take-saliency ?vessel)
 	 	:precondition (and (<= (number-executedIOb-take ?vessel) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-take ?vessel) 1) 
 	 	(executed-take ?vessel) 
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
 	 	:parameters (?foodstuff - foodstuff)
 	 	;:saliency (whisk-saliency ?foodstuff)
 	 	:precondition (and (<= (number-executedIOb-whisk ?foodstuff) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?foodstuff) 1) 
 	 	(executed-whisk ?foodstuff) 
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
 	 	:parameters (?sweetening - sweetening)
 	 	;:saliency (whisk-saliency ?sweetening)
 	 	:precondition (and (<= (number-executedIOb-whisk ?sweetening) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?sweetening) 1) 
 	 	(executed-whisk ?sweetening) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?compound - compound)
 	 	;:saliency (whisk-saliency ?compound)
 	 	:precondition (and (<= (number-executedIOb-whisk ?compound) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?compound) 1) 
 	 	(executed-whisk ?compound) 
 	 	 	  ) 
 	)  
 
	(:action top
 	 	:irrational 
 	 	:parameters (?cooking-utensil - cooking-utensil)
 	 	;:saliency (top-saliency ?cooking-utensil)
 	 	:precondition (and (<= (number-executedIOb-top ?cooking-utensil) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-top ?cooking-utensil) 1) 
 	 	(executed-top ?cooking-utensil) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?seed - seed)
 	 	;:saliency (put-saliency ?seed)
 	 	:precondition (and (<= (number-executedIOb-put ?seed) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-put ?seed) 1) 
 	 	(executed-put ?seed) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product)
 	 	;:saliency (put-saliency ?dairy-product)
 	 	:precondition (and (<= (number-executedIOb-put ?dairy-product) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-put ?dairy-product) 1) 
 	 	(executed-put ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?shrub - shrub)
 	 	;:saliency (put-saliency ?shrub)
 	 	:precondition (and (<= (number-executedIOb-put ?shrub) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-put ?shrub) 1) 
 	 	(executed-put ?shrub) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
