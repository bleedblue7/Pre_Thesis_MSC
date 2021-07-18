(define (domain 2ndex_ChocolateCookies3) 
 
(:types 
artifact - object
vessel - instrumentality
area - object
cooking-utensil - instrumentality
cutlery - artifact
component - object
suspension - matter
written-record - abstraction
kitchen-appliance - artifact
base - instrumentality
degree - abstraction
cake - matter
abstraction - entity
matter - physical-entity
instrumentality - artifact
object - physical-entity
physical-entity - entity
ambiguous - entity
for - prepositions
in - prepositions
on - prepositions
to - prepositions
with - prepositions
) 
 
(:constants 
cookie - cake
them - ambiguous
f - degree
plate - base
oven - kitchen-appliance
mixture - substance
minutes - written-record
mash - suspension
ingredients - component
fork - cutlery
cookie-sheet - cooking-utensil
center - area
bowl - vessel
minutes - for
bowl - in
plate - on
center - to
f - to
fork - with
) 
 
(:functions 
 	 (number-executed-finish) - (number 10) 
 	(number-executedDObIOb-preheat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-put ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-add ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-mix ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-bake ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cool ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-measure ?o - object) - (number 5) 
 	(number-executedIOb-take ?o - object) - (number 5) 
 	) 
 
 	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-finish) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-finish) 
 	 	 	(increase (number-executed-finish) 1) 
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
 
	(:action put
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?vessel - vessel)
 	 	;:saliency (put-saliency ?ambiguous ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-put ?ambiguous ?vessel) 5) 
 	 	 	 (property-small ?vessel) 
 	 	 	(property-in ?vessel) 
 	 	 	(not (= ?ambiguous ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?ambiguous ?vessel) 1) 
 	 	(executed-put ?ambiguous ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?substance - substance ?area - area)
 	 	;:saliency (add-saliency ?substance ?area)
 	 	:precondition (and (<= (number-executedDObIOb-add ?substance ?area) 5) 
 	 	 	 (property-to ?area) 
 	 	 	(not (= ?substance ?area))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?substance ?area) 1) 
 	 	(executed-add ?substance ?area) 
 	 	 	  ) 
 	)  
 
	(:action mix
 	 	:irrational 
 	 	:parameters (?cutlery1 - cutlery ?cutlery2 - cutlery)
 	 	;:saliency (mix-saliency ?cutlery1 ?cutlery2)
 	 	:precondition (and (<= (number-executedDObIOb-mix ?cutlery1 ?cutlery2) 5) 
 	 	 	 (property-with ?cutlery1) 
 	 	 	(not (= ?cutlery1 ?cutlery2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-mix ?cutlery1 ?cutlery2) 1) 
 	 	(executed-mix ?cutlery1 ?cutlery2) 
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
 
	(:action cool
 	 	:irrational 
 	 	:parameters (?base1 - base ?base2 - base)
 	 	;:saliency (cool-saliency ?base1 ?base2)
 	 	:precondition (and (<= (number-executedDObIOb-cool ?base1 ?base2) 5) 
 	 	 	 (property-on ?base1) 
 	 	 	(not (= ?base1 ?base2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cool ?base1 ?base2) 1) 
 	 	(executed-cool ?base1 ?base2) 
 	 	 	  ) 
 	)  
 
	(:action measure
 	 	:irrational 
 	 	:parameters (?component - component)
 	 	;:saliency (measure-saliency ?component)
 	 	:precondition (and (<= (number-executedIOb-measure ?component) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-measure ?component) 1) 
 	 	(executed-measure ?component) 
 	 	 	  ) 
 	)  
 
	(:action take
 	 	:irrational 
 	 	:parameters (?cake - cake)
 	 	;:saliency (take-saliency ?cake)
 	 	:precondition (and (<= (number-executedIOb-take ?cake) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-take ?cake) 1) 
 	 	(executed-take ?cake) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
