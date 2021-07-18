(define (domain 2ndex_buttercookie2) 
 
(:types 
whole - physical-entity
vessel - artifact
food - matter
cake - food
ovum - living-thing
written-record - abstraction
kitchen-appliance - artifact
compound - substance
expanse - abstraction
sweetening - foodstuff
orchid - living-thing
degree - measure
time-unit - measure
measure - abstraction
abstraction - entity
living-thing - whole
concoction - foodstuff
dairy-product - foodstuff
foodstuff - food
food - substance
substance - matter
matter - physical-entity
artifact - whole
physical-entity - entity
ambiguous - entity
for - prepositions
from - prepositions
in - prepositions
into - prepositions
on - prepositions
to - prepositions
) 
 
(:constants 
them - ambiguous
f - degree
vanilla - orchid
sugar - sweetening
sheets - expanse
salt - compound
oven - kitchen-appliance
minutes - written-record
hour - time-unit
flour - foodstuff
egg - ovum
dough - concoction
cookie - cake
butter - dairy-product
bowl - vessel
minutes - for
hour - for
sheets - from
egg - in
oven - in
vanilla - in
sugar - into
sheets - on
f - to
) 
 
(:functions 
 	 (number-executed-cool) - (number 10) 
 	(number-executedDObIOb-stir ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-preheat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-press ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-beat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-stir ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-dough ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-bake ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-minutes ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-remove ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-take ?o - object) - (number 5) 
 	(number-executedIOb-cream ?o - object) - (number 5) 
 	(number-executedIOb-combine ?o - object) - (number 5) 
 	(number-executedIOb-cover ?o - object) - (number 5) 
 	(number-executedIOb-chill ?o - object) - (number 5) 
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
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?sweetening - sweetening)
 	 	;:saliency (stir-saliency ?ambiguous ?sweetening)
 	 	:precondition (and (<= (number-executedDObIOb-stir ?ambiguous ?sweetening) 5) 
 	 	 	 (property-into ?sweetening) 
 	 	 	(not (= ?ambiguous ?sweetening))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-stir ?ambiguous ?sweetening) 1) 
 	 	(executed-stir ?ambiguous ?sweetening) 
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
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-preheat ?kitchen-appliance ?degree) 1) 
 	 	(executed-preheat ?kitchen-appliance ?degree) 
 	 	 	  ) 
 	)  
 
	(:action press
 	 	:irrational 
 	 	:parameters (?concoction - concoction ?expanse - expanse)
 	 	;:saliency (press-saliency ?concoction ?expanse)
 	 	:precondition (and (<= (number-executedDObIOb-press ?concoction ?expanse) 5) 
 	 	 	 (property-on ?expanse) 
 	 	 	(not (= ?concoction ?expanse))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-press ?concoction ?expanse) 1) 
 	 	(executed-press ?concoction ?expanse) 
 	 	 	  ) 
 	)  
 
	(:action beat
 	 	:irrational 
 	 	:parameters (?ovum1 - ovum ?ovum2 - ovum)
 	 	;:saliency (beat-saliency ?ovum1 ?ovum2)
 	 	:precondition (and (<= (number-executedDObIOb-beat ?ovum1 ?ovum2) 5) 
 	 	 	 (property-in ?ovum1) 
 	 	 	(not (= ?ovum1 ?ovum2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-beat ?ovum1 ?ovum2) 1) 
 	 	(executed-beat ?ovum1 ?ovum2) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?orchid1 - orchid ?orchid2 - orchid)
 	 	;:saliency (stir-saliency ?orchid1 ?orchid2)
 	 	:precondition (and (<= (number-executedDObIOb-stir ?orchid1 ?orchid2) 5) 
 	 	 	 (property-in ?orchid1) 
 	 	 	(not (= ?orchid1 ?orchid2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-stir ?orchid1 ?orchid2) 1) 
 	 	(executed-stir ?orchid1 ?orchid2) 
 	 	 	  ) 
 	)  
 
	(:action dough
 	 	:irrational 
 	 	:parameters (?time-unit1 - time-unit ?time-unit2 - time-unit)
 	 	;:saliency (dough-saliency ?time-unit1 ?time-unit2)
 	 	:precondition (and (<= (number-executedDObIOb-dough ?time-unit1 ?time-unit2) 5) 
 	 	 	 (property-for ?time-unit1) 
 	 	 	(not (= ?time-unit1 ?time-unit2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-dough ?time-unit1 ?time-unit2) 1) 
 	 	(executed-dough ?time-unit1 ?time-unit2) 
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
 
	(:action minutes
 	 	:irrational 
 	 	:parameters (?kitchen-appliance1 - kitchen-appliance ?kitchen-appliance2 - kitchen-appliance)
 	 	;:saliency (minutes-saliency ?kitchen-appliance1 ?kitchen-appliance2)
 	 	:precondition (and (<= (number-executedDObIOb-minutes ?kitchen-appliance1 ?kitchen-appliance2) 5) 
 	 	 	 (property-for) 
 	 	 	(property-in ?kitchen-appliance1) 
 	 	 	(not (= ?kitchen-appliance1 ?kitchen-appliance2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-minutes ?kitchen-appliance1 ?kitchen-appliance2) 1) 
 	 	(executed-minutes ?kitchen-appliance1 ?kitchen-appliance2) 
 	 	 	  ) 
 	)  
 
	(:action remove
 	 	:irrational 
 	 	:parameters (?expanse1 - expanse ?expanse2 - expanse)
 	 	;:saliency (remove-saliency ?expanse1 ?expanse2)
 	 	:precondition (and (<= (number-executedDObIOb-remove ?expanse1 ?expanse2) 5) 
 	 	 	 (property-from ?expanse1) 
 	 	 	(not (= ?expanse1 ?expanse2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-remove ?expanse1 ?expanse2) 1) 
 	 	(executed-remove ?expanse1 ?expanse2) 
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
 
	(:action cream
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product)
 	 	;:saliency (cream-saliency ?dairy-product)
 	 	:precondition (and (<= (number-executedIOb-cream ?dairy-product) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-cream ?dairy-product) 1) 
 	 	(executed-cream ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action cream
 	 	:irrational 
 	 	:parameters (?sweetening - sweetening)
 	 	;:saliency (cream-saliency ?sweetening)
 	 	:precondition (and (<= (number-executedIOb-cream ?sweetening) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-cream ?sweetening) 1) 
 	 	(executed-cream ?sweetening) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff)
 	 	;:saliency (combine-saliency ?foodstuff)
 	 	:precondition (and (<= (number-executedIOb-combine ?foodstuff) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-combine ?foodstuff) 1) 
 	 	(executed-combine ?foodstuff) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?compound - compound)
 	 	;:saliency (combine-saliency ?compound)
 	 	:precondition (and (<= (number-executedIOb-combine ?compound) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-combine ?compound) 1) 
 	 	(executed-combine ?compound) 
 	 	 	  ) 
 	)  
 
	(:action cover
 	 	:irrational 
 	 	:parameters (?concoction - concoction)
 	 	;:saliency (cover-saliency ?concoction)
 	 	:precondition (and (<= (number-executedIOb-cover ?concoction) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-cover ?concoction) 1) 
 	 	(executed-cover ?concoction) 
 	 	 	  ) 
 	)  
 
	(:action chill
 	 	:irrational 
 	 	:parameters (?expanse - expanse)
 	 	;:saliency (chill-saliency ?expanse)
 	 	:precondition (and (<= (number-executedIOb-chill ?expanse) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-chill ?expanse) 1) 
 	 	(executed-chill ?expanse) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
