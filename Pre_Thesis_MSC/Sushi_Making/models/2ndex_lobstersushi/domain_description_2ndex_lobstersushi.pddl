(define (domain 2ndex_lobstersushi) 
 
(:types 
vascular-plant - whole
food - matter
edible-fruit - food
committee - abstraction
vessel - artifact
dish - food
boundary - object
alliaceous-plant - vascular-plant
guardianship - event
flavorer - foodstuff
shellfish - food
floor-cover - artifact
dressing - flavorer
written-record - abstraction
rotation - event
compound - substance
spatial-property - attribute
expanse - attribute
share - abstraction
cutlery - artifact
engineering - psychological-feature
attribute - abstraction
grain - foodstuff
part - object
sweetening - flavorer
foodstuff - food
event - psychological-feature
psychological-feature - abstraction
food - substance
substance - matter
artifact - whole
abstraction - entity
matter - physical-entity
herb - vascular-plant
whole - object
object - physical-entity
physical-entity - entity
ambiguous - entity
into - prepositions
of - prepositions
on - prepositions
over - prepositions
poss - prepositions
with - prepositions
) 
 
(:constants 
it - engineering
them - ambiguous
your - ambiguous
vinegar - condiment
sushi - dish
surface - artifact
spoon - cutlery
slices - share
sheets - expanse
shape - spatial-property
salt - compound
rolls - rotation
ricet - ambiguous
rice - grain
pieces - part
piece - part
nori - ambiguous
mixture - substance
minutes - written-record
mayonnaise - dressing
mat - floor-cover
lobster - shellfish
honey - sweetening
hands - guardianship
garlic - alliaceous-plant
edges - boundary
chili - dish
bowl - vessel
board - committee
avocado - edible-fruit
asparagus - herb
shape - into
pieces - into
nori - of
nori - on
surface - on
mat - on
board - on
nori - over
rice - over
your - poss
spoon - with
sheets - with
) 
 
(:functions 
 	 (number-executed-serve) - (number 10) 
 	(number-executedDObIOb-pour ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-wet ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-sprinkle ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-lay ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-hold ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-roll ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-slice ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-put ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-mix ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-repeat ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-boil ?o - object) - (number 5) 
 	(number-executedIOb-cook ?o - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	(number-executedIOb-whisk ?o - object) - (number 5) 
 	(number-executedIOb-wait ?o - object) - (number 5) 
 	(number-executedIOb-take ?o - object) - (number 5) 
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
 
	(:action pour
 	 	:irrational 
 	 	:parameters (?substance - substance ?grain - grain)
 	 	;:saliency (pour-saliency ?substance ?grain)
 	 	:precondition (and (<= (number-executedDObIOb-pour ?substance ?grain) 5) 
 	 	 	 (property-over ?grain) 
 	 	 	(not (= ?substance ?grain))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-pour ?substance ?grain) 1) 
 	 	(executed-pour ?substance ?grain) 
 	 	 	  ) 
 	)  
 
	(:action lay
 	 	:irrational 
 	 	:parameters (?floor-cover - floor-cover ?artifact - artifact)
 	 	;:saliency (lay-saliency ?floor-cover ?artifact)
 	 	:precondition (and (<= (number-executedDObIOb-lay ?floor-cover ?artifact) 5) 
 	 	 	 (property-bamboo ?floor-cover) 
 	 	 	(property-on ?artifact) 
 	 	 	(not (= ?floor-cover ?artifact))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-lay ?floor-cover ?artifact) 1) 
 	 	(executed-lay ?floor-cover ?artifact) 
 	 	 	  ) 
 	)  
 
	(:action wet
 	 	:irrational 
 	 	:parameters (?guardianship - guardianship ?ambiguous - ambiguous)
 	 	;:saliency (wet-saliency ?guardianship ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-wet ?guardianship ?ambiguous) 5) 
 	 	 	 (property-poss ?ambiguous) 
 	 	 	(not (= ?guardianship ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-wet ?guardianship ?ambiguous) 1) 
 	 	(executed-wet ?guardianship ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action sprinkle
 	 	:irrational 
 	 	:parameters (?grain - grain ?ambiguous - ambiguous)
 	 	;:saliency (sprinkle-saliency ?grain ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-sprinkle ?grain ?ambiguous) 5) 
 	 	 	 (property-over ?ambiguous) 
 	 	 	(not (= ?grain ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-sprinkle ?grain ?ambiguous) 1) 
 	 	(executed-sprinkle ?grain ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action sprinkle
 	 	:irrational 
 	 	:parameters (?substance - substance ?grain - grain)
 	 	;:saliency (sprinkle-saliency ?substance ?grain)
 	 	:precondition (and (<= (number-executedDObIOb-sprinkle ?substance ?grain) 5) 
 	 	 	 (property-over ?grain) 
 	 	 	(not (= ?substance ?grain))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-sprinkle ?substance ?grain) 1) 
 	 	(executed-sprinkle ?substance ?grain) 
 	 	 	  ) 
 	)  
 
	(:action lay
 	 	:irrational 
 	 	:parameters (?share - share ?ambiguous - ambiguous)
 	 	;:saliency (lay-saliency ?share ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-lay ?share ?ambiguous) 5) 
 	 	 	 (property-on ?ambiguous) 
 	 	 	(not (= ?share ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-lay ?share ?ambiguous) 1) 
 	 	(executed-lay ?share ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action hold
 	 	:irrational 
 	 	:parameters (?boundary - boundary ?ambiguous - ambiguous)
 	 	;:saliency (hold-saliency ?boundary ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-hold ?boundary ?ambiguous) 5) 
 	 	 	 (property-of ?ambiguous) 
 	 	 	(not (= ?boundary ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-hold ?boundary ?ambiguous) 1) 
 	 	(executed-hold ?boundary ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action roll
 	 	:irrational 
 	 	:parameters (?engineering - engineering ?spatial-property - spatial-property)
 	 	;:saliency (roll-saliency ?engineering ?spatial-property)
 	 	:precondition (and (<= (number-executedDObIOb-roll ?engineering ?spatial-property) 5) 
 	 	 	 (property-into ?spatial-property) 
 	 	 	(not (= ?engineering ?spatial-property))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-roll ?engineering ?spatial-property) 1) 
 	 	(executed-roll ?engineering ?spatial-property) 
 	 	 	  ) 
 	)  
 
	(:action slice
 	 	:irrational 
 	 	:parameters (?rotation - rotation ?part - part)
 	 	;:saliency (slice-saliency ?rotation ?part)
 	 	:precondition (and (<= (number-executedDObIOb-slice ?rotation ?part) 5) 
 	 	 	 (property-into ?part) 
 	 	 	(not (= ?rotation ?part))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-slice ?rotation ?part) 1) 
 	 	(executed-slice ?rotation ?part) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?committee - committee)
 	 	;:saliency (put-saliency ?ambiguous ?committee)
 	 	:precondition (and (<= (number-executedDObIOb-put ?ambiguous ?committee) 5) 
 	 	 	 (property-cutting ?committee) 
 	 	 	(property-on ?committee) 
 	 	 	(not (= ?ambiguous ?committee))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?ambiguous ?committee) 1) 
 	 	(executed-put ?ambiguous ?committee) 
 	 	 	  ) 
 	)  
 
	(:action lay
 	 	:irrational 
 	 	:parameters (?part - part ?ambiguous - ambiguous)
 	 	;:saliency (lay-saliency ?part ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-lay ?part ?ambiguous) 5) 
 	 	 	 (or (property-of ?ambiguous) 
 	 	 	(property-on ?ambiguous) 
 	 	 	)
 	 	 	(not (= ?part ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-lay ?part ?ambiguous) 1) 
 	 	(executed-lay ?part ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action mix
 	 	:irrational 
 	 	:parameters (?cutlery1 - cutlery ?cutlery2 - cutlery)
 	 	;:saliency (mix-saliency ?cutlery1 ?cutlery2)
 	 	:precondition (and (<= (number-executedDObIOb-mix ?cutlery1 ?cutlery2) 5) 
 	 	 	 (property-wooden ?cutlery1) 
 	 	 	(property-with ?cutlery1) 
 	 	 	(not (= ?cutlery1 ?cutlery2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-mix ?cutlery1 ?cutlery2) 1) 
 	 	(executed-mix ?cutlery1 ?cutlery2) 
 	 	 	  ) 
 	)  
 
	(:action repeat
 	 	:irrational 
 	 	:parameters (?expanse1 - expanse ?expanse2 - expanse)
 	 	;:saliency (repeat-saliency ?expanse1 ?expanse2)
 	 	:precondition (and (<= (number-executedDObIOb-repeat ?expanse1 ?expanse2) 5) 
 	 	 	 (property-other ?expanse1) 
 	 	 	(property-with ?expanse1) 
 	 	 	(not (= ?expanse1 ?expanse2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-repeat ?expanse1 ?expanse2) 1) 
 	 	(executed-repeat ?expanse1 ?expanse2) 
 	 	 	  ) 
 	)  
 
	(:action boil
 	 	:irrational 
 	 	:parameters (?grain - grain)
 	 	;:saliency (boil-saliency ?grain)
 	 	:precondition (and (<= (number-executedIOb-boil ?grain) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-boil ?grain) 1) 
 	 	(executed-boil ?grain) 
 	 	 	  ) 
 	)  
 
	(:action cook
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous)
 	 	;:saliency (cook-saliency ?ambiguous)
 	 	:precondition (and (<= (number-executedIOb-cook ?ambiguous) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-cook ?ambiguous) 1) 
 	 	(executed-cook ?ambiguous) 
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
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?sweetening - sweetening)
 	 	;:saliency (whisk-saliency ?sweetening)
 	 	:precondition (and (<= (number-executedIOb-whisk ?sweetening) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?sweetening) 1) 
 	 	(executed-whisk ?sweetening) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?condiment - condiment)
 	 	;:saliency (whisk-saliency ?condiment)
 	 	:precondition (and (<= (number-executedIOb-whisk ?condiment) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?condiment) 1) 
 	 	(executed-whisk ?condiment) 
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
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
