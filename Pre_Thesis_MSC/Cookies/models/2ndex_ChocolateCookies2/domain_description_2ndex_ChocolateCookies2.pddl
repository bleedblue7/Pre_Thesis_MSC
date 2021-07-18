(define (domain 2ndex_ChocolateCookies2) 
 
(:types 
game-equipment - instrumentality
vessel - instrumentality
food - matter
cake - food
cutlery - artifact
guardianship - psychological-feature
component - object
written-record - abstraction
kitchen-appliance - artifact
cooking-utensil - instrumentality
chemical - substance
salt - chemical
sweetening - foodstuff
orchid - whole
degree - abstraction
engineering - psychological-feature
pesticide - chemical
psychological-feature - abstraction
abstraction - entity
concoction - foodstuff
dairy-product - foodstuff
foodstuff - food
food - substance
substance - matter
matter - physical-entity
instrumentality - artifact
artifact - whole
whole - object
object - physical-entity
physical-entity - entity
for - prepositions
in - prepositions
on - prepositions
out_of - prepositions
to - prepositions
with - prepositions
) 
 
(:constants 
soda - compound
it - engineering
f - degree
vanilla - orchid
sugar - sweetening
spray - pesticide
pan - cooking-utensil
oven - kitchen-appliance
minutes - written-record
ingredients - component
hands - guardianship
fork - cutlery
flour - foodstuff
eggs - foodstuff
dough - concoction
cookies - cake
cookie - cake
container - instrumentality
butter - dairy-product
bowl - vessel
balls - game-equipment
minutes - for
oven - in
hands - in
container - in
pan - on
oven - out_of
bowl - to
pan - to
f - to
fork - with
) 
 
(:functions 
 	 (number-executed-whisk) - (number 10) 
 	(number-executed-finish) - (number 10) 
 	(number-executedDObIOb-preheat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-add ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-apply ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-roll ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-flatten ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-put ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-take ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cool ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-wait ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-store ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-mix ?o - object) - (number 5) 
 	(number-executedIOb-take ?o - object) - (number 5) 
 	(number-executedIOb-cool ?o - object) - (number 5) 
 	) 
 
 	(:action whisk
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-whisk) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-whisk) 
 	 	 	(increase (number-executed-whisk) 1) 
 	 	 	  ) 
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
 
	(:action add
 	 	:irrational 
 	 	:parameters (?orchid - orchid ?vessel - vessel)
 	 	;:saliency (add-saliency ?orchid ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-add ?orchid ?vessel) 5) 
 	 	 	 (property-to ?vessel) 
 	 	 	(not (= ?orchid ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?orchid ?vessel) 1) 
 	 	(executed-add ?orchid ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product ?vessel - vessel)
 	 	;:saliency (add-saliency ?dairy-product ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-add ?dairy-product ?vessel) 5) 
 	 	 	 (property-to ?vessel) 
 	 	 	(not (= ?dairy-product ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?dairy-product ?vessel) 1) 
 	 	(executed-add ?dairy-product ?vessel) 
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
 
	(:action apply
 	 	:irrational 
 	 	:parameters (?pesticide - pesticide ?cooking-utensil - cooking-utensil)
 	 	;:saliency (apply-saliency ?pesticide ?cooking-utensil)
 	 	:precondition (and (<= (number-executedDObIOb-apply ?pesticide ?cooking-utensil) 5) 
 	 	 	 (property-cooking ?pesticide) 
 	 	 	(property-to ?cooking-utensil) 
 	 	 	(not (= ?pesticide ?cooking-utensil))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-apply ?pesticide ?cooking-utensil) 1) 
 	 	(executed-apply ?pesticide ?cooking-utensil) 
 	 	 	  ) 
 	)  
 
	(:action roll
 	 	:irrational 
 	 	:parameters (?engineering - engineering ?guardianship - guardianship)
 	 	;:saliency (roll-saliency ?engineering ?guardianship)
 	 	:precondition (and (<= (number-executedDObIOb-roll ?engineering ?guardianship) 5) 
 	 	 	 (property-in ?guardianship) 
 	 	 	(not (= ?engineering ?guardianship))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-roll ?engineering ?guardianship) 1) 
 	 	(executed-roll ?engineering ?guardianship) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?game-equipment - game-equipment ?cooking-utensil - cooking-utensil)
 	 	;:saliency (place-saliency ?game-equipment ?cooking-utensil)
 	 	:precondition (and (<= (number-executedDObIOb-place ?game-equipment ?cooking-utensil) 5) 
 	 	 	 (property-baking ?cooking-utensil) 
 	 	 	(property-on ?cooking-utensil) 
 	 	 	(not (= ?game-equipment ?cooking-utensil))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?game-equipment ?cooking-utensil) 1) 
 	 	(executed-place ?game-equipment ?cooking-utensil) 
 	 	 	  ) 
 	)  
 
	(:action flatten
 	 	:irrational 
 	 	:parameters (?concoction - concoction ?cutlery - cutlery)
 	 	;:saliency (flatten-saliency ?concoction ?cutlery)
 	 	:precondition (and (<= (number-executedDObIOb-flatten ?concoction ?cutlery) 5) 
 	 	 	 (property-with ?cutlery) 
 	 	 	(not (= ?concoction ?cutlery))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-flatten ?concoction ?cutlery) 1) 
 	 	(executed-flatten ?concoction ?cutlery) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?cake - cake ?kitchen-appliance - kitchen-appliance)
 	 	;:saliency (put-saliency ?cake ?kitchen-appliance)
 	 	:precondition (and (<= (number-executedDObIOb-put ?cake ?kitchen-appliance) 5) 
 	 	 	 (property-in ?kitchen-appliance) 
 	 	 	(not (= ?cake ?kitchen-appliance))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?cake ?kitchen-appliance) 1) 
 	 	(executed-put ?cake ?kitchen-appliance) 
 	 	 	  ) 
 	)  
 
	(:action take
 	 	:irrational 
 	 	:parameters (?cake - cake ?kitchen-appliance - kitchen-appliance)
 	 	;:saliency (take-saliency ?cake ?kitchen-appliance)
 	 	:precondition (and (<= (number-executedDObIOb-take ?cake ?kitchen-appliance) 5) 
 	 	 	 (property-out_of ?kitchen-appliance) 
 	 	 	(not (= ?cake ?kitchen-appliance))
	 	 	 (not (finished)) 
 	 	 	(executed-put ?cake ?kitchen-appliance) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-take ?cake ?kitchen-appliance) 1) 
 	 	(executed-take ?cake ?kitchen-appliance) 
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
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cool ?cake ?written-record) 1) 
 	 	(executed-cool ?cake ?written-record) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?sweetening - sweetening ?vessel - vessel)
 	 	;:saliency (add-saliency ?sweetening ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-add ?sweetening ?vessel) 5) 
 	 	 	 (or (property-brown ?sweetening) 
 	 	 	)
 	 	 	(property-to ?vessel) 
 	 	 	(not (= ?sweetening ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?sweetening ?vessel) 1) 
 	 	(executed-add ?sweetening ?vessel) 
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
 
	(:action store
 	 	:irrational 
 	 	:parameters (?instrumentality1 - instrumentality ?instrumentality2 - instrumentality)
 	 	;:saliency (store-saliency ?instrumentality1 ?instrumentality2)
 	 	:precondition (and (<= (number-executedDObIOb-store ?instrumentality1 ?instrumentality2) 5) 
 	 	 	 (property-airtight ?instrumentality1) 
 	 	 	(property-in ?instrumentality1) 
 	 	 	(not (= ?instrumentality1 ?instrumentality2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-store ?instrumentality1 ?instrumentality2) 1) 
 	 	(executed-store ?instrumentality1 ?instrumentality2) 
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
 
	(:action mix
 	 	:irrational 
 	 	:parameters (?component - component)
 	 	;:saliency (mix-saliency ?component)
 	 	:precondition (and (<= (number-executedIOb-mix ?component) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-whisk) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-mix ?component) 1) 
 	 	(executed-mix ?component) 
 	 	 	  ) 
 	)  
 
	(:action take
 	 	:irrational 
 	 	:parameters (?concoction - concoction)
 	 	;:saliency (take-saliency ?concoction)
 	 	:precondition (and (<= (number-executedIOb-take ?concoction) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-take ?concoction) 1) 
 	 	(executed-take ?concoction) 
 	 	 	  ) 
 	)  
 
	(:action cool
 	 	:irrational 
 	 	:parameters (?cake - cake)
 	 	;:saliency (cool-saliency ?cake)
 	 	:precondition (and (<= (number-executedIOb-cool ?cake) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-cool ?cake) 1) 
 	 	(executed-cool ?cake) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
