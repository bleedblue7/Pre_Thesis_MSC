(define (domain 2ndex_stuffedFrenchToast) 
 
(:types 
container - whole
ballplayer - organism
food - matter
bark - whole
ovum - living-thing
dairy-product - food
component - object
written-record - abstraction
pouch - container
region - object
share - abstraction
orchid - organism
abstraction - entity
material - substance
food - substance
substance - matter
baked-goods - food
matter - physical-entity
vessel - container
organism - living-thing
living-thing - whole
whole - object
object - physical-entity
physical-entity - entity
for - prepositions
in - prepositions
into - prepositions
of - prepositions
on - prepositions
) 
 
(:constants 
vanilla - orchid
slices - share
sides - region
pocket - pouch
mixture - substance
minutes - written-record
milk - dairy-product
ingredients - component
filling - material
eggs - foodstuff
egg - ovum
cinnamon - bark
bread - baked-goods
bowl - vessel
batter - ballplayer
bag - container
minutes - for
bag - in
mixture - in
slices - into
eggs - of
milk - of
sides - on
) 
 
(:functions 
 	 (number-executed-select) - (number 10) 
 	(number-executedDObIOb-slice ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-combine ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-whisk ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-coat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-dip ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cook ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-stuff ?o - object) - (number 5) 
 	(number-executedIOb-take ?o - object) - (number 5) 
 	(number-executedIOb-whisk ?o - object) - (number 5) 
 	) 
 
 	(:action select
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-select) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-select) 
 	 	 	(increase (number-executed-select) 1) 
 	 	 	  ) 
 	)  
 
	(:action slice
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods ?share - share)
 	 	;:saliency (slice-saliency ?baked-goods ?share)
 	 	:precondition (and (<= (number-executedDObIOb-slice ?baked-goods ?share) 5) 
 	 	 	 (property-into ?share) 
 	 	 	(not (= ?baked-goods ?share))
	 	 	 (not (finished)) 
 	 	 	(executed-select) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-slice ?baked-goods ?share) 1) 
 	 	(executed-slice ?baked-goods ?share) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?component - component ?container - container)
 	 	;:saliency (combine-saliency ?component ?container)
 	 	:precondition (and (<= (number-executedDObIOb-combine ?component ?container) 5) 
 	 	 	 (property-in ?container) 
 	 	 	(not (= ?component ?container))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-combine ?component ?container) 1) 
 	 	(executed-combine ?component ?container) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?ballplayer - ballplayer ?foodstuff - foodstuff)
 	 	;:saliency (whisk-saliency ?ballplayer ?foodstuff)
 	 	:precondition (and (<= (number-executedDObIOb-whisk ?ballplayer ?foodstuff) 5) 
 	 	 	 (property-of ?foodstuff) 
 	 	 	(not (= ?ballplayer ?foodstuff))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-whisk ?ballplayer ?foodstuff) 1) 
 	 	(executed-whisk ?ballplayer ?foodstuff) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?ballplayer - ballplayer ?dairy-product - dairy-product)
 	 	;:saliency (whisk-saliency ?ballplayer ?dairy-product)
 	 	:precondition (and (<= (number-executedDObIOb-whisk ?ballplayer ?dairy-product) 5) 
 	 	 	 (property-of ?dairy-product) 
 	 	 	(not (= ?ballplayer ?dairy-product))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-whisk ?ballplayer ?dairy-product) 1) 
 	 	(executed-whisk ?ballplayer ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action coat
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods ?region - region)
 	 	;:saliency (coat-saliency ?baked-goods ?region)
 	 	:precondition (and (<= (number-executedDObIOb-coat ?baked-goods ?region) 5) 
 	 	 	 (property-on ?region) 
 	 	 	(not (= ?baked-goods ?region))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-coat ?baked-goods ?region) 1) 
 	 	(executed-coat ?baked-goods ?region) 
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
 
	(:action cook
 	 	:irrational 
 	 	:parameters (?pouch - pouch ?written-record - written-record)
 	 	;:saliency (cook-saliency ?pouch ?written-record)
 	 	:precondition (and (<= (number-executedDObIOb-cook ?pouch ?written-record) 5) 
 	 	 	 (property-for ?written-record) 
 	 	 	(not (= ?pouch ?written-record))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cook ?pouch ?written-record) 1) 
 	 	(executed-cook ?pouch ?written-record) 
 	 	 	  ) 
 	)  
 
	(:action stuff
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods)
 	 	;:saliency (stuff-saliency ?baked-goods)
 	 	:precondition (and (<= (number-executedIOb-stuff ?baked-goods) 5) 
 	 	 	 (property-filling) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-stuff ?baked-goods) 1) 
 	 	(executed-stuff ?baked-goods) 
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
 	 	:parameters (?bark - bark)
 	 	;:saliency (whisk-saliency ?bark)
 	 	:precondition (and (<= (number-executedIOb-whisk ?bark) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?bark) 1) 
 	 	(executed-whisk ?bark) 
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
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
