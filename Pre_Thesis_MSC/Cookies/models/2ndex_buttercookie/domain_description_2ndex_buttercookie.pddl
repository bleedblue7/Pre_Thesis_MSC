(define (domain 2ndex_buttercookie) 
 
(:types 
ballplayer - organism
container - artifact
food - matter
cake - food
crockery - artifact
ovum - living-thing
home-appliance - artifact
refrigerator - home-appliance
component - object
wood - material
written-record - abstraction
urgency - abstraction
compound - material
share - abstraction
sweetening - foodstuff
orchid - organism
degree - abstraction
receptacle - container
kitchen-appliance - home-appliance
abstraction - entity
material - substance
concoction - foodstuff
dairy-product - foodstuff
foodstuff - food
food - substance
substance - matter
matter - physical-entity
vessel - container
artifact - whole
organism - living-thing
living-thing - whole
whole - object
object - physical-entity
physical-entity - entity
ambiguous - entity
for - prepositions
in - prepositions
into - prepositions
of - prepositions
onto - prepositions
to - prepositions
) 
 
(:constants 
them - ambiguous
c - degree
vanilla - orchid
tray - receptacle
sugar - sweetening
slices - share
salt - compound
press - urgency
oven - kitchen-appliance
mixture - substance
minutes - written-record
log - wood
ingredients - component
fridge - refrigerator
flour - foodstuff
egg - ovum
dough - concoction
cup - crockery
cookies - cake
cookie - cake
butter - dairy-product
bowl - vessel
batter - ballplayer
minutes - for
fridge - in
bowl - in
slices - into
batter - into
bowl - into
mixture - into
dough - of
butter - of
sugar - of
tray - onto
c - to
) 
 
(:functions 
 	 (number-executed-roll) - (number 10) 
 	(number-executed-make) - (number 10) 
 	(number-executed-finished) - (number 10) 
 	(number-executedDObIOb-preheat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-measure ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-stir ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-mix ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cover ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cut ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cook ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-put ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-cream ?o - object) - (number 5) 
 	(number-executedIOb-use ?o - object) - (number 5) 
 	) 
 
 	(:action roll
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-roll) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-roll) 
 	 	 	(increase (number-executed-roll) 1) 
 	 	 	  ) 
 	)  
 
	(:action make
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-make) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-make) 
 	 	 	(increase (number-executed-make) 1) 
 	 	 	  ) 
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
 
	(:action measure
 	 	:irrational 
 	 	:parameters (?crockery - crockery ?dairy-product - dairy-product)
 	 	;:saliency (measure-saliency ?crockery ?dairy-product)
 	 	:precondition (and (<= (number-executedDObIOb-measure ?crockery ?dairy-product) 5) 
 	 	 	 (property-of ?dairy-product) 
 	 	 	(not (= ?crockery ?dairy-product))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-measure ?crockery ?dairy-product) 1) 
 	 	(executed-measure ?crockery ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action measure
 	 	:irrational 
 	 	:parameters (?crockery - crockery ?sweetening - sweetening)
 	 	;:saliency (measure-saliency ?crockery ?sweetening)
 	 	:precondition (and (<= (number-executedDObIOb-measure ?crockery ?sweetening) 5) 
 	 	 	 (property-of ?sweetening) 
 	 	 	(not (= ?crockery ?sweetening))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-measure ?crockery ?sweetening) 1) 
 	 	(executed-measure ?crockery ?sweetening) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?ovum - ovum ?substance - substance)
 	 	;:saliency (stir-saliency ?ovum ?substance)
 	 	:precondition (and (<= (number-executedDObIOb-stir ?ovum ?substance) 5) 
 	 	 	 (property-into ?substance) 
 	 	 	(not (= ?ovum ?substance))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-stir ?ovum ?substance) 1) 
 	 	(executed-stir ?ovum ?substance) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?orchid - orchid ?substance - substance)
 	 	;:saliency (stir-saliency ?orchid ?substance)
 	 	:precondition (and (<= (number-executedDObIOb-stir ?orchid ?substance) 5) 
 	 	 	 (property-into ?substance) 
 	 	 	(not (= ?orchid ?substance))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-stir ?orchid ?substance) 1) 
 	 	(executed-stir ?orchid ?substance) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?compound - compound ?vessel - vessel)
 	 	;:saliency (stir-saliency ?compound ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-stir ?compound ?vessel) 5) 
 	 	 	 (property-separate ?vessel) 
 	 	 	(property-in ?vessel) 
 	 	 	(not (= ?compound ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-stir ?compound ?vessel) 1) 
 	 	(executed-stir ?compound ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff ?vessel - vessel)
 	 	;:saliency (stir-saliency ?foodstuff ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-stir ?foodstuff ?vessel) 5) 
 	 	 	 (property-separate ?vessel) 
 	 	 	(property-in ?vessel) 
 	 	 	(not (= ?foodstuff ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-stir ?foodstuff ?vessel) 1) 
 	 	(executed-stir ?foodstuff ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action mix
 	 	:irrational 
 	 	:parameters (?component - component ?ballplayer - ballplayer)
 	 	;:saliency (mix-saliency ?component ?ballplayer)
 	 	:precondition (and (<= (number-executedDObIOb-mix ?component ?ballplayer) 5) 
 	 	 	 (property-into ?ballplayer) 
 	 	 	(not (= ?component ?ballplayer))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-mix ?component ?ballplayer) 1) 
 	 	(executed-mix ?component ?ballplayer) 
 	 	 	  ) 
 	)  
 
	(:action cover
 	 	:irrational 
 	 	:parameters (?vessel - vessel ?concoction - concoction)
 	 	;:saliency (cover-saliency ?vessel ?concoction)
 	 	:precondition (and (<= (number-executedDObIOb-cover ?vessel ?concoction) 5) 
 	 	 	 (property-of ?concoction) 
 	 	 	(not (= ?vessel ?concoction))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cover ?vessel ?concoction) 1) 
 	 	(executed-cover ?vessel ?concoction) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?vessel - vessel ?refrigerator - refrigerator)
 	 	;:saliency (place-saliency ?vessel ?refrigerator)
 	 	:precondition (and (<= (number-executedDObIOb-place ?vessel ?refrigerator) 5) 
 	 	 	 (property-in ?refrigerator) 
 	 	 	(not (= ?vessel ?refrigerator))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?vessel ?refrigerator) 1) 
 	 	(executed-place ?vessel ?refrigerator) 
 	 	 	  ) 
 	)  
 
	(:action cut
 	 	:irrational 
 	 	:parameters (?wood - wood ?share - share)
 	 	;:saliency (cut-saliency ?wood ?share)
 	 	:precondition (and (<= (number-executedDObIOb-cut ?wood ?share) 5) 
 	 	 	 (property-into ?share) 
 	 	 	(not (= ?wood ?share))
	 	 	 (not (finished)) 
 	 	 	(executed-roll) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-cut ?wood ?share) 1) 
 	 	(executed-cut ?wood ?share) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?receptacle - receptacle)
 	 	;:saliency (place-saliency ?ambiguous ?receptacle)
 	 	:precondition (and (<= (number-executedDObIOb-place ?ambiguous ?receptacle) 5) 
 	 	 	 (property-baking ?receptacle) 
 	 	 	(property-onto ?receptacle) 
 	 	 	(not (= ?ambiguous ?receptacle))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?ambiguous ?receptacle) 1) 
 	 	(executed-place ?ambiguous ?receptacle) 
 	 	 	  ) 
 	)  
 
	(:action cook
 	 	:irrational 
 	 	:parameters (?cake - cake ?written-record - written-record)
 	 	;:saliency (cook-saliency ?cake ?written-record)
 	 	:precondition (and (<= (number-executedDObIOb-cook ?cake ?written-record) 5) 
 	 	 	 (property-for ?written-record) 
 	 	 	(not (= ?cake ?written-record))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cook ?cake ?written-record) 1) 
 	 	(executed-cook ?cake ?written-record) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?vessel1 - vessel ?vessel2 - vessel)
 	 	;:saliency (put-saliency ?vessel1 ?vessel2)
 	 	:precondition (and (<= (number-executedDObIOb-put ?vessel1 ?vessel2) 5) 
 	 	 	 (property-mixing ?vessel1) 
 	 	 	(property-into ?vessel1) 
 	 	 	(not (= ?vessel1 ?vessel2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?vessel1 ?vessel2) 1) 
 	 	(executed-put ?vessel1 ?vessel2) 
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
 
	(:action use
 	 	:irrational 
 	 	:parameters (?urgency - urgency)
 	 	;:saliency (use-saliency ?urgency)
 	 	:precondition (and (<= (number-executedIOb-use ?urgency) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-use ?urgency) 1) 
 	 	(executed-use ?urgency) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
