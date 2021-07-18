(define (domain 2ndex_oreocookies) 
 
(:types 
artifact - object
game-equipment - instrumentality
vessel - instrumentality
food - matter
cake - food
component - object
written-record - abstraction
party - abstraction
kitchen-appliance - artifact
cooking-utensil - instrumentality
salt - substance
sweetening - foodstuff
degree - abstraction
abstraction - entity
concoction - foodstuff
beverage - food
dairy-product - foodstuff
foodstuff - food
food - substance
substance - matter
matter - physical-entity
instrumentality - artifact
object - physical-entity
physical-entity - entity
for - prepositions
in - prepositions
onto - prepositions
to - prepositions
with - prepositions
) 
 
(:constants 
soda - compound
c - degree
sugar - sweetening
powder - solid
paper - material
pan - cooking-utensil
oven - kitchen-appliance
mixer - party
minutes - written-record
ingredients - component
flour - foodstuff
eggs - foodstuff
dough - concoction
cookies - cake
cookie - cake
cocoa - beverage
butter - dairy-product
bowl - vessel
balls - game-equipment
minutes - for
bowl - in
paper - onto
bowl - to
c - to
butter - with
sugar - with
paper - with
mixer - with
) 
 
(:functions 
 	 (number-executed-mix) - (number 10) 
 	(number-executed-line) - (number 10) 
 	(number-executedDObIOb-preheat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-combine ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-add ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-scoop ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-bake ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-butter ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-sugar ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-pan ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	(number-executedIOb-dough ?o - object) - (number 5) 
 	) 
 
 	(:action mix
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-mix) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-mix) 
 	 	 	(increase (number-executed-mix) 1) 
 	 	 	  ) 
 	)  
 
	(:action line
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-line) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-line) 
 	 	 	(increase (number-executed-line) 1) 
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
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?component - component ?vessel - vessel)
 	 	;:saliency (combine-saliency ?component ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-combine ?component ?vessel) 5) 
 	 	 	 (property-dry ?component) 
 	 	 	(property-large ?vessel) 
 	 	 	(property-in ?vessel) 
 	 	 	(not (= ?component ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-combine ?component ?vessel) 1) 
 	 	(executed-combine ?component ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff ?vessel - vessel)
 	 	;:saliency (add-saliency ?foodstuff ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-add ?foodstuff ?vessel) 5) 
 	 	 	 (property-to ?vessel) 
 	 	 	(not (= ?foodstuff ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?foodstuff ?vessel) 1) 
 	 	(executed-add ?foodstuff ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?compound - compound ?vessel - vessel)
 	 	;:saliency (add-saliency ?compound ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-add ?compound ?vessel) 5) 
 	 	 	 (property-baking ?compound) 
 	 	 	(property-to ?vessel) 
 	 	 	(not (= ?compound ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?compound ?vessel) 1) 
 	 	(executed-add ?compound ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action scoop
 	 	:irrational 
 	 	:parameters (?component - component ?party - party)
 	 	;:saliency (scoop-saliency ?component ?party)
 	 	:precondition (and (<= (number-executedDObIOb-scoop ?component ?party) 5) 
 	 	 	 (property-dry ?component) 
 	 	 	(property-with ?party) 
 	 	 	(not (= ?component ?party))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-scoop ?component ?party) 1) 
 	 	(executed-scoop ?component ?party) 
 	 	 	  ) 
 	)  
 
	(:action scoop
 	 	:irrational 
 	 	:parameters (?concoction - concoction ?material - material)
 	 	;:saliency (scoop-saliency ?concoction ?material)
 	 	:precondition (and (<= (number-executedDObIOb-scoop ?concoction ?material) 5) 
 	 	 	 (property-onto ?material) 
 	 	 	(not (= ?concoction ?material))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-scoop ?concoction ?material) 1) 
 	 	(executed-scoop ?concoction ?material) 
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
 
	(:action add
 	 	:irrational 
 	 	:parameters (?solid - solid ?vessel - vessel)
 	 	;:saliency (add-saliency ?solid ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-add ?solid ?vessel) 5) 
 	 	 	 (or (property-baking ?solid) 
 	 	 	)
 	 	 	(property-to ?vessel) 
 	 	 	(not (= ?solid ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?solid ?vessel) 1) 
 	 	(executed-add ?solid ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action butter
 	 	:irrational 
 	 	:parameters (?vessel1 - vessel ?vessel2 - vessel)
 	 	;:saliency (butter-saliency ?vessel1 ?vessel2)
 	 	:precondition (and (<= (number-executedDObIOb-butter ?vessel1 ?vessel2) 5) 
 	 	 	 (property-in ?vessel1) 
 	 	 	(not (= ?vessel1 ?vessel2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-butter ?vessel1 ?vessel2) 1) 
 	 	(executed-butter ?vessel1 ?vessel2) 
 	 	 	  ) 
 	)  
 
	(:action sugar
 	 	:irrational 
 	 	:parameters (?vessel1 - vessel ?vessel2 - vessel)
 	 	;:saliency (sugar-saliency ?vessel1 ?vessel2)
 	 	:precondition (and (<= (number-executedDObIOb-sugar ?vessel1 ?vessel2) 5) 
 	 	 	 (property-in ?vessel1) 
 	 	 	(not (= ?vessel1 ?vessel2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-sugar ?vessel1 ?vessel2) 1) 
 	 	(executed-sugar ?vessel1 ?vessel2) 
 	 	 	  ) 
 	)  
 
	(:action pan
 	 	:irrational 
 	 	:parameters (?material1 - material ?material2 - material)
 	 	;:saliency (pan-saliency ?material1 ?material2)
 	 	:precondition (and (<= (number-executedDObIOb-pan ?material1 ?material2) 5) 
 	 	 	 (property-parchment ?material1) 
 	 	 	(property-with ?material1) 
 	 	 	(not (= ?material1 ?material2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-pan ?material1 ?material2) 1) 
 	 	(executed-pan ?material1 ?material2) 
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
 
	(:action dough
 	 	:irrational 
 	 	:parameters (?game-equipment - game-equipment)
 	 	;:saliency (dough-saliency ?game-equipment)
 	 	:precondition (and (<= (number-executedIOb-dough ?game-equipment) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-dough ?game-equipment) 1) 
 	 	(executed-dough ?game-equipment) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
