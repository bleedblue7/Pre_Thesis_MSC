(define (domain 2ndex_ChocolateCookies) 
 
(:types 
artifact - object
vessel - artifact
food - matter
potato - food
cake - food
component - object
candy - food
written-record - abstraction
party - abstraction
kitchen-appliance - artifact
salt - substance
expanse - abstraction
sweetening - foodstuff
cloak - artifact
degree - abstraction
abstraction - entity
concoction - foodstuff
beverage - food
dairy-product - foodstuff
foodstuff - food
food - substance
substance - matter
matter - physical-entity
object - physical-entity
physical-entity - entity
for - prepositions
on - prepositions
to - prepositions
with - prepositions
) 
 
(:constants 
soda - compound
f - degree
wrap - cloak
sugar - sweetening
sheet - expanse
powder - solid
paper - material
oven - kitchen-appliance
mixer - party
minutes - written-record
marshmallows - candy
ingredients - component
flour - foodstuff
dough - concoction
cookies - cake
cookie - cake
cocoa - beverage
chocolate - beverage
chips - potato
butter - dairy-product
bowl - vessel
minutes - for
sheet - on
f - to
paper - with
wrap - with
) 
 
(:functions 
 	 (number-executed-serve) - (number 10) 
 	(number-executed-chill) - (number 10) 
 	(number-executedDObIOb-preheat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cover ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-drop ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-bake ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cool ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-blend ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-cream ?o - object) - (number 5) 
 	(number-executedIOb-take ?o - object) - (number 5) 
 	(number-executedIOb-combine ?o - object) - (number 5) 
 	(number-executedIOb-pour ?o - object) - (number 5) 
 	(number-executedIOb-fold ?o - object) - (number 5) 
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
 
	(:action cover
 	 	:irrational 
 	 	:parameters (?expanse - expanse ?material - material)
 	 	;:saliency (cover-saliency ?expanse ?material)
 	 	:precondition (and (<= (number-executedDObIOb-cover ?expanse ?material) 5) 
 	 	 	 (property-baking ?expanse) 
 	 	 	(property-with ?material) 
 	 	 	(not (= ?expanse ?material))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cover ?expanse ?material) 1) 
 	 	(executed-cover ?expanse ?material) 
 	 	 	  ) 
 	)  
 
	(:action cover
 	 	:irrational 
 	 	:parameters (?vessel - vessel ?cloak - cloak)
 	 	;:saliency (cover-saliency ?vessel ?cloak)
 	 	:precondition (and (<= (number-executedDObIOb-cover ?vessel ?cloak) 5) 
 	 	 	 (property-plastic ?cloak) 
 	 	 	(property-with ?cloak) 
 	 	 	(not (= ?vessel ?cloak))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cover ?vessel ?cloak) 1) 
 	 	(executed-cover ?vessel ?cloak) 
 	 	 	  ) 
 	)  
 
	(:action drop
 	 	:irrational 
 	 	:parameters (?concoction - concoction ?expanse - expanse)
 	 	;:saliency (drop-saliency ?concoction ?expanse)
 	 	:precondition (and (<= (number-executedDObIOb-drop ?concoction ?expanse) 5) 
 	 	 	 (property-on ?expanse) 
 	 	 	(not (= ?concoction ?expanse))
	 	 	 (not (finished)) 
 	 	 	(executed-chill) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-drop ?concoction ?expanse) 1) 
 	 	(executed-drop ?concoction ?expanse) 
 	 	 	  ) 
 	)  
 
	(:action bake
 	 	:irrational 
 	 	:parameters (?cake - cake ?written-record - written-record)
 	 	;:saliency (bake-saliency ?cake ?written-record)
 	 	:precondition (and (<= (number-executedDObIOb-bake ?cake ?written-record) 5) 
 	 	 	 (property-for ?written-record) 
 	 	 	(not (= ?cake ?written-record))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-bake ?cake ?written-record) 1) 
 	 	(executed-bake ?cake ?written-record) 
 	 	 	  ) 
 	)  
 
	(:action cool
 	 	:irrational 
 	 	:parameters (?cake - cake ?written-record - written-record)
 	 	;:saliency (cool-saliency ?cake ?written-record)
 	 	:precondition (and (<= (number-executedDObIOb-cool ?cake ?written-record) 5) 
 	 	 	 (property-for ?written-record) 
 	 	 	(not (= ?cake ?written-record))
	 	 	 (not (finished)) 
 	 	 	(executed-bake ?cake ?written-record) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-cool ?cake ?written-record) 1) 
 	 	(executed-cool ?cake ?written-record) 
 	 	 	  ) 
 	)  
 
	(:action blend
 	 	:irrational 
 	 	:parameters (?written-record1 - written-record ?written-record2 - written-record)
 	 	;:saliency (blend-saliency ?written-record1 ?written-record2)
 	 	:precondition (and (<= (number-executedDObIOb-blend ?written-record1 ?written-record2) 5) 
 	 	 	 (property-for ?written-record1) 
 	 	 	(not (= ?written-record1 ?written-record2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-blend ?written-record1 ?written-record2) 1) 
 	 	(executed-blend ?written-record1 ?written-record2) 
 	 	 	  ) 
 	)  
 
	(:action take
 	 	:irrational 
 	 	:parameters (?party - party)
 	 	;:saliency (take-saliency ?party)
 	 	:precondition (and (<= (number-executedIOb-take ?party) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-take ?party) 1) 
 	 	(executed-take ?party) 
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
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?component - component)
 	 	;:saliency (combine-saliency ?component)
 	 	:precondition (and (<= (number-executedIOb-combine ?component) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-combine ?component) 1) 
 	 	(executed-combine ?component) 
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
 	 	:parameters (?compound - compound)
 	 	;:saliency (combine-saliency ?compound)
 	 	:precondition (and (<= (number-executedIOb-combine ?compound) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-combine ?compound) 1) 
 	 	(executed-combine ?compound) 
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
 
	(:action pour
 	 	:irrational 
 	 	:parameters (?component - component)
 	 	;:saliency (pour-saliency ?component)
 	 	:precondition (and (<= (number-executedIOb-pour ?component) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-pour ?component) 1) 
 	 	(executed-pour ?component) 
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
 
	(:action fold
 	 	:irrational 
 	 	:parameters (?candy - candy)
 	 	;:saliency (fold-saliency ?candy)
 	 	:precondition (and (<= (number-executedIOb-fold ?candy) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-fold ?candy) 1) 
 	 	(executed-fold ?candy) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
