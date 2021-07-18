(define (domain 2ndex_peanutbuttercookies) 
 
(:types 
whole - physical-entity
apparatus - instrumentality
food - matter
cake - food
written-record - abstraction
porridge - food
pod - whole
compound - substance
pan - instrumentality
expanse - abstraction
kitchen-appliance - artifact
sweetening - foodstuff
orchid - whole
abstraction - entity
dairy-product - foodstuff
foodstuff - food
food - substance
substance - matter
matter - physical-entity
instrumentality - artifact
artifact - whole
physical-entity - entity
ambiguous - entity
for - prepositions
in - prepositions
on - prepositions
onto - prepositions
to - prepositions
) 
 
(:constants 
them - ambiguous
vanilla - orchid
sugar - sweetening
stove - kitchen-appliance
sheet - expanse
saucepan - pan
salt - compound
peanut - pod
oatmeal - porridge
minutes - written-record
milk - dairy-product
medium - instrumentality
cookies - cake
butter - dairy-product
burner - apparatus
minutes - for
saucepan - in
oatmeal - in
stove - on
sheet - onto
medium - to
) 
 
(:functions 
 	 (number-executed-finished) - (number 10) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-put ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-turn ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-scoop ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-stir ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cool ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-boil ?o - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	) 
 
 	(:action finished
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-finished) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-finished) 
 	 	 	(increase (number-executed-finished) 1) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?pan - pan)
 	 	;:saliency (place-saliency ?ambiguous ?pan)
 	 	:precondition (and (<= (number-executedDObIOb-place ?ambiguous ?pan) 5) 
 	 	 	 (property-in ?pan) 
 	 	 	(not (= ?ambiguous ?pan))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?ambiguous ?pan) 1) 
 	 	(executed-place ?ambiguous ?pan) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?pan - pan ?kitchen-appliance - kitchen-appliance)
 	 	;:saliency (put-saliency ?pan ?kitchen-appliance)
 	 	:precondition (and (<= (number-executedDObIOb-put ?pan ?kitchen-appliance) 5) 
 	 	 	 (property-on ?kitchen-appliance) 
 	 	 	(not (= ?pan ?kitchen-appliance))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?pan ?kitchen-appliance) 1) 
 	 	(executed-put ?pan ?kitchen-appliance) 
 	 	 	  ) 
 	)  
 
	(:action turn
 	 	:irrational 
 	 	:parameters (?apparatus - apparatus ?instrumentality - instrumentality)
 	 	;:saliency (turn-saliency ?apparatus ?instrumentality)
 	 	:precondition (and (<= (number-executedDObIOb-turn ?apparatus ?instrumentality) 5) 
 	 	 	 (property-to ?instrumentality) 
 	 	 	(not (= ?apparatus ?instrumentality))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-turn ?apparatus ?instrumentality) 1) 
 	 	(executed-turn ?apparatus ?instrumentality) 
 	 	 	  ) 
 	)  
 
	(:action scoop
 	 	:irrational 
 	 	:parameters (?cake - cake ?expanse - expanse)
 	 	;:saliency (scoop-saliency ?cake ?expanse)
 	 	:precondition (and (<= (number-executedDObIOb-scoop ?cake ?expanse) 5) 
 	 	 	 (property-onto ?expanse) 
 	 	 	(not (= ?cake ?expanse))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-scoop ?cake ?expanse) 1) 
 	 	(executed-scoop ?cake ?expanse) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?porridge1 - porridge ?porridge2 - porridge)
 	 	;:saliency (stir-saliency ?porridge1 ?porridge2)
 	 	:precondition (and (<= (number-executedDObIOb-stir ?porridge1 ?porridge2) 5) 
 	 	 	 (property-in ?porridge1) 
 	 	 	(not (= ?porridge1 ?porridge2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-stir ?porridge1 ?porridge2) 1) 
 	 	(executed-stir ?porridge1 ?porridge2) 
 	 	 	  ) 
 	)  
 
	(:action cool
 	 	:irrational 
 	 	:parameters (?written-record1 - written-record ?written-record2 - written-record)
 	 	;:saliency (cool-saliency ?written-record1 ?written-record2)
 	 	:precondition (and (<= (number-executedDObIOb-cool ?written-record1 ?written-record2) 5) 
 	 	 	 (property-for ?written-record1) 
 	 	 	(not (= ?written-record1 ?written-record2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cool ?written-record1 ?written-record2) 1) 
 	 	(executed-cool ?written-record1 ?written-record2) 
 	 	 	  ) 
 	)  
 
	(:action boil
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product)
 	 	;:saliency (boil-saliency ?dairy-product)
 	 	:precondition (and (<= (number-executedIOb-boil ?dairy-product) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-boil ?dairy-product) 1) 
 	 	(executed-boil ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action boil
 	 	:irrational 
 	 	:parameters (?sweetening - sweetening)
 	 	;:saliency (boil-saliency ?sweetening)
 	 	:precondition (and (<= (number-executedIOb-boil ?sweetening) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-boil ?sweetening) 1) 
 	 	(executed-boil ?sweetening) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?orchid - orchid)
 	 	;:saliency (add-saliency ?orchid)
 	 	:precondition (and (<= (number-executedIOb-add ?orchid) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?orchid) 1) 
 	 	(executed-add ?orchid) 
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
 	 	:parameters (?compound - compound)
 	 	;:saliency (add-saliency ?compound)
 	 	:precondition (and (<= (number-executedIOb-add ?compound) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?compound) 1) 
 	 	(executed-add ?compound) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
