(define (domain 2ndex_gingercookies) 
 
(:types 
game-equipment - instrumentality
ballplayer - organism
vessel - instrumentality
bark - natural-object
flower-bud - natural-object
food - matter
cake - food
ovum - living-thing
vascular-plant - organism
component - object
syrup - foodstuff
kitchen-appliance - artifact
salt - substance
cutlery - artifact
orchid - vascular-plant
degree - abstraction
engineering - abstraction
abstraction - entity
herb - vascular-plant
concoction - foodstuff
natural-object - whole
dairy-product - foodstuff
foodstuff - food
food - substance
substance - matter
matter - physical-entity
organism - living-thing
living-thing - whole
instrumentality - artifact
artifact - whole
whole - object
object - physical-entity
physical-entity - entity
in - prepositions
into - prepositions
to - prepositions
) 
 
(:constants 
soda - compound
it - engineering
f - degree
vanilla - orchid
sugar - sweetening
spoon - cutlery
oven - kitchen-appliance
molasses - syrup
mixture - substance
ingredients - component
ground - object
ginger - herb
flour - foodstuff
egg - ovum
dough - concoction
cookies - cake
cloves - flower-bud
cinnamon - bark
butter - dairy-product
bowl - vessel
batter - ballplayer
ball - game-equipment
bowl - in
ball - into
bowl - to
f - to
) 
 
(:functions 
 	 (number-executed-cut) - (number 10) 
 	(number-executed-cream) - (number 10) 
 	(number-executedDObIOb-put ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-pour ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-form ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-preheat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-butter ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-sugar ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-stir ?o - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	(number-executedIOb-beat ?o - object) - (number 5) 
 	(number-executedIOb-mix ?o - object) - (number 5) 
 	(number-executedIOb-use ?o - object) - (number 5) 
 	(number-executedIOb-chill ?o - object) - (number 5) 
 	(number-executedIOb-roll ?o - object) - (number 5) 
 	) 
 
 	(:action cut
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-cut) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-cut) 
 	 	 	(increase (number-executed-cut) 1) 
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
 
	(:action put
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff ?vessel - vessel)
 	 	;:saliency (put-saliency ?foodstuff ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-put ?foodstuff ?vessel) 5) 
 	 	 	 (property-in ?vessel) 
 	 	 	(not (= ?foodstuff ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?foodstuff ?vessel) 1) 
 	 	(executed-put ?foodstuff ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?compound - compound ?vessel - vessel)
 	 	;:saliency (put-saliency ?compound ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-put ?compound ?vessel) 5) 
 	 	 	 (property-baking ?compound) 
 	 	 	(property-in ?vessel) 
 	 	 	(not (= ?compound ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?compound ?vessel) 1) 
 	 	(executed-put ?compound ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?bark - bark ?vessel - vessel)
 	 	;:saliency (put-saliency ?bark ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-put ?bark ?vessel) 5) 
 	 	 	 (property-in ?vessel) 
 	 	 	(not (= ?bark ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?bark ?vessel) 1) 
 	 	(executed-put ?bark ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?herb - herb ?vessel - vessel)
 	 	;:saliency (put-saliency ?herb ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-put ?herb ?vessel) 5) 
 	 	 	 (property-in ?vessel) 
 	 	 	(not (= ?herb ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?herb ?vessel) 1) 
 	 	(executed-put ?herb ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?flower-bud - flower-bud ?vessel - vessel)
 	 	;:saliency (put-saliency ?flower-bud ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-put ?flower-bud ?vessel) 5) 
 	 	 	 (property-in ?vessel) 
 	 	 	(not (= ?flower-bud ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?flower-bud ?vessel) 1) 
 	 	(executed-put ?flower-bud ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?ovum - ovum ?vessel - vessel)
 	 	;:saliency (place-saliency ?ovum ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-place ?ovum ?vessel) 5) 
 	 	 	 (property-in ?vessel) 
 	 	 	(not (= ?ovum ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?ovum ?vessel) 1) 
 	 	(executed-place ?ovum ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?orchid - orchid ?vessel - vessel)
 	 	;:saliency (place-saliency ?orchid ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-place ?orchid ?vessel) 5) 
 	 	 	 (property-in ?vessel) 
 	 	 	(not (= ?orchid ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?orchid ?vessel) 1) 
 	 	(executed-place ?orchid ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?syrup - syrup ?vessel - vessel)
 	 	;:saliency (place-saliency ?syrup ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-place ?syrup ?vessel) 5) 
 	 	 	 (property-in ?vessel) 
 	 	 	(not (= ?syrup ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?syrup ?vessel) 1) 
 	 	(executed-place ?syrup ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action pour
 	 	:irrational 
 	 	:parameters (?substance - substance ?vessel - vessel)
 	 	;:saliency (pour-saliency ?substance ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-pour ?substance ?vessel) 5) 
 	 	 	 (property-wet ?vessel) 
 	 	 	(property-to ?vessel) 
 	 	 	(not (= ?substance ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-pour ?substance ?vessel) 1) 
 	 	(executed-pour ?substance ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action form
 	 	:irrational 
 	 	:parameters (?ballplayer - ballplayer ?game-equipment - game-equipment)
 	 	;:saliency (form-saliency ?ballplayer ?game-equipment)
 	 	:precondition (and (<= (number-executedDObIOb-form ?ballplayer ?game-equipment) 5) 
 	 	 	 (property-into ?game-equipment) 
 	 	 	(not (= ?ballplayer ?game-equipment))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-form ?ballplayer ?game-equipment) 1) 
 	 	(executed-form ?ballplayer ?game-equipment) 
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
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?component - component)
 	 	;:saliency (stir-saliency ?component)
 	 	:precondition (and (<= (number-executedIOb-stir ?component) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-stir ?component) 1) 
 	 	(executed-stir ?component) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?component - component)
 	 	;:saliency (add-saliency ?component)
 	 	:precondition (and (<= (number-executedIOb-add ?component) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-cream) 
 	 	 	
(executed-stir ?component) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-add ?component) 1) 
 	 	(executed-add ?component) 
 	 	 	  ) 
 	)  
 
	(:action beat
 	 	:irrational 
 	 	:parameters (?component - component)
 	 	;:saliency (beat-saliency ?component)
 	 	:precondition (and (<= (number-executedIOb-beat ?component) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-beat ?component) 1) 
 	 	(executed-beat ?component) 
 	 	 	  ) 
 	)  
 
	(:action mix
 	 	:irrational 
 	 	:parameters (?component - component)
 	 	;:saliency (mix-saliency ?component)
 	 	:precondition (and (<= (number-executedIOb-mix ?component) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-beat ?component) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-mix ?component) 1) 
 	 	(executed-mix ?component) 
 	 	 	  ) 
 	)  
 
	(:action use
 	 	:irrational 
 	 	:parameters (?cutlery - cutlery)
 	 	;:saliency (use-saliency ?cutlery)
 	 	:precondition (and (<= (number-executedIOb-use ?cutlery) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-use ?cutlery) 1) 
 	 	(executed-use ?cutlery) 
 	 	 	  ) 
 	)  
 
	(:action chill
 	 	:irrational 
 	 	:parameters (?engineering - engineering)
 	 	;:saliency (chill-saliency ?engineering)
 	 	:precondition (and (<= (number-executedIOb-chill ?engineering) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-chill ?engineering) 1) 
 	 	(executed-chill ?engineering) 
 	 	 	  ) 
 	)  
 
	(:action roll
 	 	:irrational 
 	 	:parameters (?concoction - concoction)
 	 	;:saliency (roll-saliency ?concoction)
 	 	:precondition (and (<= (number-executedIOb-roll ?concoction) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-roll ?concoction) 1) 
 	 	(executed-roll ?concoction) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
