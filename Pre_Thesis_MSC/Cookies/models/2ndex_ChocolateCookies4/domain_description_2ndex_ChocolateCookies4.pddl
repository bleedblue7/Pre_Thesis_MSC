(define (domain 2ndex_ChocolateCookies4) 
 
(:types 
whole - physical-entity
vessel - instrumentality
wood - material
food - matter
potato - food
crockery - artifact
edge-tool - implement
written-record - abstraction
party - abstraction
kitchen-appliance - artifact
kitchen-utensil - implement
framework - artifact
salt - material
expanse - abstraction
sweetening - foodstuff
containerful - measure
orchid - whole
ligament - instrumentality
degree - measure
mixer - kitchen-utensil
measure - abstraction
cooking-utensil - kitchen-utensil
abstraction - entity
implement - instrumentality
beverage - food
material - substance
dairy-product - foodstuff
foodstuff - food
food - substance
substance - matter
matter - physical-entity
instrumentality - artifact
artifact - whole
physical-entity - entity
at - prepositions
by - prepositions
for - prepositions
from - prepositions
in - prepositions
into - prepositions
on - prepositions
onto - prepositions
to - prepositions
with - prepositions
) 
 
(:constants 
whisk - party
soda - compound
f - degree
wire - ligament
vanilla - orchid
tablespoonfuls - containerful
sugar - sweetening
sheets - expanse
racks - framework
powder - solid
pans - cooking-utensil
oven - kitchen-appliance
mixture - substance
minutes - written-record
knife - edge-tool
flour - foodstuff
eggs - foodstuff
cup - crockery
cocoa - beverage
chocolate - beverage
chips - potato
cherries - wood
butter - dairy-product
bowl - vessel
f - at
tablespoonfuls - by
minutes - for
oven - from
bowl - in
cup - into
pans - on
racks - on
sheets - onto
f - to
mixer - with
knife - with
whisk - with
) 
 
(:functions 
 	 (number-executed-serve) - (number 10) 
 	(number-executedDObIOb-preheat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-spoon ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-level ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-stir ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-beat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-drop ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-bake ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-remove ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-wait ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cool ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-combine ?o - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	(number-executedIOb-flour ?o - object) - (number 5) 
 	(number-executedIOb-fold ?o - object) - (number 5) 
 	(number-executedIOb-wait ?o - object) - (number 5) 
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
 
	(:action spoon
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff ?crockery - crockery)
 	 	;:saliency (spoon-saliency ?foodstuff ?crockery)
 	 	:precondition (and (<= (number-executedDObIOb-spoon ?foodstuff ?crockery) 5) 
 	 	 	 (property-into ?crockery) 
 	 	 	(not (= ?foodstuff ?crockery))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-spoon ?foodstuff ?crockery) 1) 
 	 	(executed-spoon ?foodstuff ?crockery) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?sweetening - sweetening ?vessel - vessel)
 	 	;:saliency (place-saliency ?sweetening ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-place ?sweetening ?vessel) 5) 
 	 	 	 (property-in ?vessel) 
 	 	 	(not (= ?sweetening ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?sweetening ?vessel) 1) 
 	 	(executed-place ?sweetening ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product ?vessel - vessel)
 	 	;:saliency (place-saliency ?dairy-product ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-place ?dairy-product ?vessel) 5) 
 	 	 	 (property-in ?vessel) 
 	 	 	(not (= ?dairy-product ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?dairy-product ?vessel) 1) 
 	 	(executed-place ?dairy-product ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action level
 	 	:irrational 
 	 	:parameters (?edge-tool1 - edge-tool ?edge-tool2 - edge-tool)
 	 	;:saliency (level-saliency ?edge-tool1 ?edge-tool2)
 	 	:precondition (and (<= (number-executedDObIOb-level ?edge-tool1 ?edge-tool2) 5) 
 	 	 	 (property-with ?edge-tool1) 
 	 	 	(not (= ?edge-tool1 ?edge-tool2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-level ?edge-tool1 ?edge-tool2) 1) 
 	 	(executed-level ?edge-tool1 ?edge-tool2) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?party1 - party ?party2 - party)
 	 	;:saliency (stir-saliency ?party1 ?party2)
 	 	:precondition (and (<= (number-executedDObIOb-stir ?party1 ?party2) 5) 
 	 	 	 (property-with ?party1) 
 	 	 	(not (= ?party1 ?party2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-stir ?party1 ?party2) 1) 
 	 	(executed-stir ?party1 ?party2) 
 	 	 	  ) 
 	)  
 
	(:action drop
 	 	:irrational 
 	 	:parameters (?containerful - containerful ?expanse - expanse)
 	 	;:saliency (drop-saliency ?containerful ?expanse)
 	 	:precondition (and (<= (number-executedDObIOb-drop ?containerful ?expanse) 5) 
 	 	 	 (property-baking ?expanse) 
 	 	 	(property-by ?containerful) 
 	 	 	(property-onto ?expanse) 
 	 	 	(not (= ?containerful ?expanse))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-drop ?containerful ?expanse) 1) 
 	 	(executed-drop ?containerful ?expanse) 
 	 	 	  ) 
 	)  
 
	(:action bake
 	 	:irrational 
 	 	:parameters (?degree1 - degree ?degree2 - degree)
 	 	;:saliency (bake-saliency ?degree1 ?degree2)
 	 	:precondition (and (<= (number-executedDObIOb-bake ?degree1 ?degree2) 5) 
 	 	 	 (property-at ?degree1) 
 	 	 	(not (= ?degree1 ?degree2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-bake ?degree1 ?degree2) 1) 
 	 	(executed-bake ?degree1 ?degree2) 
 	 	 	  ) 
 	)  
 
	(:action remove
 	 	:irrational 
 	 	:parameters (?kitchen-appliance1 - kitchen-appliance ?kitchen-appliance2 - kitchen-appliance)
 	 	;:saliency (remove-saliency ?kitchen-appliance1 ?kitchen-appliance2)
 	 	:precondition (and (<= (number-executedDObIOb-remove ?kitchen-appliance1 ?kitchen-appliance2) 5) 
 	 	 	 (property-from ?kitchen-appliance1) 
 	 	 	(not (= ?kitchen-appliance1 ?kitchen-appliance2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-remove ?kitchen-appliance1 ?kitchen-appliance2) 1) 
 	 	(executed-remove ?kitchen-appliance1 ?kitchen-appliance2) 
 	 	 	  ) 
 	)  
 
	(:action cool
 	 	:irrational 
 	 	:parameters (?cooking-utensil1 - cooking-utensil ?cooking-utensil2 - cooking-utensil)
 	 	;:saliency (cool-saliency ?cooking-utensil1 ?cooking-utensil2)
 	 	:precondition (and (<= (number-executedDObIOb-cool ?cooking-utensil1 ?cooking-utensil2) 5) 
 	 	 	 (property-on ?cooking-utensil1) 
 	 	 	(not (= ?cooking-utensil1 ?cooking-utensil2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cool ?cooking-utensil1 ?cooking-utensil2) 1) 
 	 	(executed-cool ?cooking-utensil1 ?cooking-utensil2) 
 	 	 	  ) 
 	)  
 
	(:action wait
 	 	:irrational 
 	 	:parameters (?written-record1 - written-record ?written-record2 - written-record)
 	 	;:saliency (wait-saliency ?written-record1 ?written-record2)
 	 	:precondition (and (<= (number-executedDObIOb-wait ?written-record1 ?written-record2) 5) 
 	 	 	 (property-for ?written-record1) 
 	 	 	(not (= ?written-record1 ?written-record2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-wait ?written-record1 ?written-record2) 1) 
 	 	(executed-wait ?written-record1 ?written-record2) 
 	 	 	  ) 
 	)  
 
	(:action cool
 	 	:irrational 
 	 	:parameters (?framework1 - framework ?framework2 - framework)
 	 	;:saliency (cool-saliency ?framework1 ?framework2)
 	 	:precondition (and (<= (number-executedDObIOb-cool ?framework1 ?framework2) 5) 
 	 	 	 (property-on ?framework1) 
 	 	 	(not (= ?framework1 ?framework2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cool ?framework1 ?framework2) 1) 
 	 	(executed-cool ?framework1 ?framework2) 
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
 	 	:parameters (?beverage - beverage)
 	 	;:saliency (combine-saliency ?beverage)
 	 	:precondition (and (<= (number-executedIOb-combine ?beverage) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-combine ?beverage) 1) 
 	 	(executed-combine ?beverage) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?solid - solid)
 	 	;:saliency (combine-saliency ?solid)
 	 	:precondition (and (<= (number-executedIOb-combine ?solid) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-combine ?solid) 1) 
 	 	(executed-combine ?solid) 
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
 	 	:parameters (?foodstuff - foodstuff)
 	 	;:saliency (add-saliency ?foodstuff)
 	 	:precondition (and (<= (number-executedIOb-add ?foodstuff) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?foodstuff) 1) 
 	 	(executed-add ?foodstuff) 
 	 	 	  ) 
 	)  
 
	(:action flour
 	 	:irrational 
 	 	:parameters (?substance - substance)
 	 	;:saliency (flour-saliency ?substance)
 	 	:precondition (and (<= (number-executedIOb-flour ?substance) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-flour ?substance) 1) 
 	 	(executed-flour ?substance) 
 	 	 	  ) 
 	)  
 
	(:action fold
 	 	:irrational 
 	 	:parameters (?wood - wood)
 	 	;:saliency (fold-saliency ?wood)
 	 	:precondition (and (<= (number-executedIOb-fold ?wood) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-fold ?wood) 1) 
 	 	(executed-fold ?wood) 
 	 	 	  ) 
 	)  
 
	(:action fold
 	 	:irrational 
 	 	:parameters (?potato - potato)
 	 	;:saliency (fold-saliency ?potato)
 	 	:precondition (and (<= (number-executedIOb-fold ?potato) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-fold ?potato) 1) 
 	 	(executed-fold ?potato) 
 	 	 	  ) 
 	)  
 
	(:action wait
 	 	:irrational 
 	 	:parameters (?written-record - written-record)
 	 	;:saliency (wait-saliency ?written-record)
 	 	:precondition (and (<= (number-executedIOb-wait ?written-record) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-wait ?written-record) 1) 
 	 	(executed-wait ?written-record) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
