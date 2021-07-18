(define (domain 2ndex_sushi3) 
 
(:types 
part - physical-entity
digit - part
artifact - object
refrigerator - artifact
guardianship - psychological-feature
energy - physical-entity
vessel - instrumentality
edge-tool - implement
linear-unit - measure
written-record - abstraction
relish - foodstuff
shape - abstraction
parallelogram - shape
binary-compound - substance
pan - implement
small-indefinite-quantity - measure
expanse - shape
filter - instrumentality
piece-of-cloth - part
food - matter
cloak - artifact
engineering - psychological-feature
produce - food
grain - foodstuff
part - object
foodstuff - food
food - substance
substance - matter
matter - physical-entity
measure - abstraction
implement - instrumentality
instrumentality - artifact
psychological-feature - abstraction
abstraction - entity
object - physical-entity
physical-entity - entity
ambiguous - entity
in - prepositions
into - prepositions
of - prepositions
on - prepositions
over - prepositions
poss - prepositions
to - prepositions
with - prepositions
) 
 
(:constants 
it - engineering
them - ambiguous
your - ambiguous
wrap - cloak
water - binary-compound
vinegar - condiment
veggies - produce
towel - piece-of-cloth
surface - artifact
strainer - filter
sheet - expanse
serving - small-indefinite-quantity
saucepan - pan
salt - compound
rice - grain
rectangle - parallelogram
pieces - part
pickle - relish
nori - ambiguous
mixture - substance
minutes - written-record
mesh - linear-unit
medium - instrumentality
layer - artifact
knife - edge-tool
jar - vessel
heat - energy
hands - guardianship
fridge - refrigerator
fingers - digit
fridge - in
jar - in
strainer - in
pieces - into
rectangle - into
rice - of
veggies - of
nori - of
surface - on
nori - over
heat - over
towel - over
wrap - over
your - poss
saucepan - to
fingers - with
water - with
pickle - with
knife - with
sheet - with
wrap - with
) 
 
(:functions 
 	 (number-executed-sugar) - (number 10) 
 	(number-executed-stir) - (number 10) 
 	(number-executed-start) - (number 10) 
 	(number-executed-set) - (number 10) 
 	(number-executed-saucepand) - (number 10) 
 	(number-executed-pat) - (number 10) 
 	(number-executed-cover) - (number 10) 
 	(number-executed-cook) - (number 10) 
 	(number-executed-boil) - (number 10) 
 	(number-executedDObIOb-rinse ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-chop ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-fold ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-arrange ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-add ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-add ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-heat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cool ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-top ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-layer ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-all ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-slice ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-serve ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-reduce ?o - object) - (number 5) 
 	(number-executedIOb-wait ?o - object) - (number 5) 
 	(number-executedIOb-kill ?o - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	(number-executedIOb-prep ?o - object) - (number 5) 
 	(number-executedIOb-grab ?o - object) - (number 5) 
 	(number-executedIOb-use ?o - object) - (number 5) 
 	(number-executedIOb-roll ?o - object) - (number 5) 
 	(number-executedIOb-top ?o - object) - (number 5) 
 	) 
 
 	(:action sugar
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-sugar) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-sugar) 
 	 	 	(increase (number-executed-sugar) 1) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-stir) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-stir) 
 	 	 	(increase (number-executed-stir) 1) 
 	 	 	  ) 
 	)  
 
	(:action start
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-start) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-start) 
 	 	 	(increase (number-executed-start) 1) 
 	 	 	  ) 
 	)  
 
	(:action set
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-set) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-set) 
 	 	 	(increase (number-executed-set) 1) 
 	 	 	  ) 
 	)  
 
	(:action saucepand
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-saucepand) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-saucepand) 
 	 	 	(increase (number-executed-saucepand) 1) 
 	 	 	  ) 
 	)  
 
	(:action pat
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-pat) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-pat) 
 	 	 	(increase (number-executed-pat) 1) 
 	 	 	  ) 
 	)  
 
	(:action cover
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-cover) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-cover) 
 	 	 	(increase (number-executed-cover) 1) 
 	 	 	  ) 
 	)  
 
	(:action cook
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-cook) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-cook) 
 	 	 	(increase (number-executed-cook) 1) 
 	 	 	  ) 
 	)  
 
	(:action boil
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-boil) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-boil) 
 	 	 	(increase (number-executed-boil) 1) 
 	 	 	  ) 
 	)  
 
	(:action rinse
 	 	:irrational 
 	 	:parameters (?grain - grain ?filter - filter)
 	 	;:saliency (rinse-saliency ?grain ?filter)
 	 	:precondition (and (<= (number-executedDObIOb-rinse ?grain ?filter) 5) 
 	 	 	 (property-fine ?filter) 
 	 	 	(property-in ?filter) 
 	 	 	(not (= ?grain ?filter))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-rinse ?grain ?filter) 1) 
 	 	(executed-rinse ?grain ?filter) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?compound - compound ?pan - pan)
 	 	;:saliency (add-saliency ?compound ?pan)
 	 	:precondition (and (<= (number-executedDObIOb-add ?compound ?pan) 5) 
 	 	 	 (property-small ?pan) 
 	 	 	(property-to ?pan) 
 	 	 	(not (= ?compound ?pan))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?compound ?pan) 1) 
 	 	(executed-add ?compound ?pan) 
 	 	 	  ) 
 	)  
 
	(:action chop
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?part - part)
 	 	;:saliency (chop-saliency ?ambiguous ?part)
 	 	:precondition (and (<= (number-executedDObIOb-chop ?ambiguous ?part) 5) 
 	 	 	 (property-thin ?part) 
 	 	 	(property-into ?part) 
 	 	 	(not (= ?ambiguous ?part))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-chop ?ambiguous ?part) 1) 
 	 	(executed-chop ?ambiguous ?part) 
 	 	 	  ) 
 	)  
 
	(:action fold
 	 	:irrational 
 	 	:parameters (?engineering - engineering ?parallelogram - parallelogram)
 	 	;:saliency (fold-saliency ?engineering ?parallelogram)
 	 	:precondition (and (<= (number-executedDObIOb-fold ?engineering ?parallelogram) 5) 
 	 	 	 (property-into ?parallelogram) 
 	 	 	(not (= ?engineering ?parallelogram))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-fold ?engineering ?parallelogram) 1) 
 	 	(executed-fold ?engineering ?parallelogram) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?engineering - engineering ?artifact - artifact)
 	 	;:saliency (place-saliency ?engineering ?artifact)
 	 	:precondition (and (<= (number-executedDObIOb-place ?engineering ?artifact) 5) 
 	 	 	 (property-flat ?artifact) 
 	 	 	(property-on ?artifact) 
 	 	 	(not (= ?engineering ?artifact))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?engineering ?artifact) 1) 
 	 	(executed-place ?engineering ?artifact) 
 	 	 	  ) 
 	)  
 
	(:action arrange
 	 	:irrational 
 	 	:parameters (?small-indefinite-quantity - small-indefinite-quantity ?produce - produce)
 	 	;:saliency (arrange-saliency ?small-indefinite-quantity ?produce)
 	 	:precondition (and (<= (number-executedDObIOb-arrange ?small-indefinite-quantity ?produce) 5) 
 	 	 	 (property-of ?produce) 
 	 	 	(not (= ?small-indefinite-quantity ?produce))
	 	 	 (not (finished)) 
 	 	 	(executed-pat) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-arrange ?small-indefinite-quantity ?produce) 1) 
 	 	(executed-arrange ?small-indefinite-quantity ?produce) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?grain - grain ?digit - digit)
 	 	;:saliency (add-saliency ?grain ?digit)
 	 	:precondition (and (<= (number-executedDObIOb-add ?grain ?digit) 5) 
 	 	 	 (property-with ?digit) 
 	 	 	(not (= ?grain ?digit))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?grain ?digit) 1) 
 	 	(executed-add ?grain ?digit) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?pan - pan ?binary-compound - binary-compound)
 	 	;:saliency (add-saliency ?pan ?binary-compound)
 	 	:precondition (and (<= (number-executedDObIOb-add ?pan ?binary-compound) 5) 
 	 	 	 (property-to ?pan) 
 	 	 	(property-with ?binary-compound) 
 	 	 	(not (= ?pan ?binary-compound))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?pan ?binary-compound) 1) 
 	 	(executed-add ?pan ?binary-compound) 
 	 	 	  ) 
 	)  
 
	(:action heat
 	 	:irrational 
 	 	:parameters (?energy1 - energy ?energy2 - energy)
 	 	;:saliency (heat-saliency ?energy1 ?energy2)
 	 	:precondition (and (<= (number-executedDObIOb-heat ?energy1 ?energy2) 5) 
 	 	 	 (property-over ?energy1) 
 	 	 	(not (= ?energy1 ?energy2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-heat ?energy1 ?energy2) 1) 
 	 	(executed-heat ?energy1 ?energy2) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?vessel1 - vessel ?vessel2 - vessel)
 	 	;:saliency (place-saliency ?vessel1 ?vessel2)
 	 	:precondition (and (<= (number-executedDObIOb-place ?vessel1 ?vessel2) 5) 
 	 	 	 (property-in ?vessel1) 
 	 	 	(not (= ?vessel1 ?vessel2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?vessel1 ?vessel2) 1) 
 	 	(executed-place ?vessel1 ?vessel2) 
 	 	 	  ) 
 	)  
 
	(:action cool
 	 	:irrational 
 	 	:parameters (?refrigerator1 - refrigerator ?refrigerator2 - refrigerator)
 	 	;:saliency (cool-saliency ?refrigerator1 ?refrigerator2)
 	 	:precondition (and (<= (number-executedDObIOb-cool ?refrigerator1 ?refrigerator2) 5) 
 	 	 	 (property-in ?refrigerator1) 
 	 	 	(not (= ?refrigerator1 ?refrigerator2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cool ?refrigerator1 ?refrigerator2) 1) 
 	 	(executed-cool ?refrigerator1 ?refrigerator2) 
 	 	 	  ) 
 	)  
 
	(:action top
 	 	:irrational 
 	 	:parameters (?cloak1 - cloak ?cloak2 - cloak)
 	 	;:saliency (top-saliency ?cloak1 ?cloak2)
 	 	:precondition (and (<= (number-executedDObIOb-top ?cloak1 ?cloak2) 5) 
 	 	 	 (property-plastic ?cloak1) 
 	 	 	(property-with ?cloak1) 
 	 	 	(not (= ?cloak1 ?cloak2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-top ?cloak1 ?cloak2) 1) 
 	 	(executed-top ?cloak1 ?cloak2) 
 	 	 	  ) 
 	)  
 
	(:action top
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?expanse - expanse)
 	 	;:saliency (top-saliency ?ambiguous ?expanse)
 	 	:precondition (and (<= (number-executedDObIOb-top ?ambiguous ?expanse) 5) 
 	 	 	 (property-of ?ambiguous) 
 	 	 	(property-with ?expanse) 
 	 	 	(not (= ?ambiguous ?expanse))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-top ?ambiguous ?expanse) 1) 
 	 	(executed-top ?ambiguous ?expanse) 
 	 	 	  ) 
 	)  
 
	(:action layer
 	 	:irrational 
 	 	:parameters (?grain1 - grain ?grain2 - grain)
 	 	;:saliency (layer-saliency ?grain1 ?grain2)
 	 	:precondition (and (<= (number-executedDObIOb-layer ?grain1 ?grain2) 5) 
 	 	 	 (property-thin) 
 	 	 	(property-of ?grain1) 
 	 	 	(not (= ?grain1 ?grain2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-layer ?grain1 ?grain2) 1) 
 	 	(executed-layer ?grain1 ?grain2) 
 	 	 	  ) 
 	)  
 
	(:action all
 	 	:irrational 
 	 	:parameters (?ambiguous1 - ambiguous ?ambiguous2 - ambiguous)
 	 	;:saliency (all-saliency ?ambiguous1 ?ambiguous2)
 	 	:precondition (and (<= (number-executedDObIOb-all ?ambiguous1 ?ambiguous2) 5) 
 	 	 	 (property-over ?ambiguous1) 
 	 	 	(not (= ?ambiguous1 ?ambiguous2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-all ?ambiguous1 ?ambiguous2) 1) 
 	 	(executed-all ?ambiguous1 ?ambiguous2) 
 	 	 	  ) 
 	)  
 
	(:action slice
 	 	:irrational 
 	 	:parameters (?edge-tool1 - edge-tool ?edge-tool2 - edge-tool)
 	 	;:saliency (slice-saliency ?edge-tool1 ?edge-tool2)
 	 	:precondition (and (<= (number-executedDObIOb-slice ?edge-tool1 ?edge-tool2) 5) 
 	 	 	 (property-sharp ?edge-tool1) 
 	 	 	(property-with ?edge-tool1) 
 	 	 	(not (= ?edge-tool1 ?edge-tool2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-slice ?edge-tool1 ?edge-tool2) 1) 
 	 	(executed-slice ?edge-tool1 ?edge-tool2) 
 	 	 	  ) 
 	)  
 
	(:action serve
 	 	:irrational 
 	 	:parameters (?relish1 - relish ?relish2 - relish)
 	 	;:saliency (serve-saliency ?relish1 ?relish2)
 	 	:precondition (and (<= (number-executedDObIOb-serve ?relish1 ?relish2) 5) 
 	 	 	 (property-with ?relish1) 
 	 	 	(not (= ?relish1 ?relish2))
	 	 	(not (finished)) 
 	 	 	(executed-set) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-serve ?relish1 ?relish2) 1) 
 	 	(executed-serve ?relish1 ?relish2) 
 	 	 	  ) 
 	)  
 
	(:action reduce
 	 	:irrational 
 	 	:parameters (?energy - energy)
 	 	;:saliency (reduce-saliency ?energy)
 	 	:precondition (and (<= (number-executedIOb-reduce ?energy) 5) 
 	 	 	 (property-low) 
 	 	 	(not (finished)) 
 	 	 	(executed-boil) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-reduce ?energy) 1) 
 	 	(executed-reduce ?energy) 
 	 	 	  ) 
 	)  
 
	(:action wait
 	 	:irrational 
 	 	:parameters (?written-record - written-record)
 	 	;:saliency (wait-saliency ?written-record)
 	 	:precondition (and (<= (number-executedIOb-wait ?written-record) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-cook) 
 	 	 	
(executed-cover) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-wait ?written-record) 1) 
 	 	(executed-wait ?written-record) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?condiment - condiment)
 	 	;:saliency (add-saliency ?condiment)
 	 	:precondition (and (<= (number-executedIOb-add ?condiment) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?condiment) 1) 
 	 	(executed-add ?condiment) 
 	 	 	  ) 
 	)  
 
	(:action kill
 	 	:irrational 
 	 	:parameters (?energy - energy)
 	 	;:saliency (kill-saliency ?energy)
 	 	:precondition (and (<= (number-executedIOb-kill ?energy) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-kill ?energy) 1) 
 	 	(executed-kill ?energy) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?substance - substance)
 	 	;:saliency (add-saliency ?substance)
 	 	:precondition (and (<= (number-executedIOb-add ?substance) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?substance) 1) 
 	 	(executed-add ?substance) 
 	 	 	  ) 
 	)  
 
	(:action prep
 	 	:irrational 
 	 	:parameters (?produce - produce)
 	 	;:saliency (prep-saliency ?produce)
 	 	:precondition (and (<= (number-executedIOb-prep ?produce) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-stir) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-prep ?produce) 1) 
 	 	(executed-prep ?produce) 
 	 	 	  ) 
 	)  
 
	(:action grab
 	 	:irrational 
 	 	:parameters (?piece-of-cloth - piece-of-cloth)
 	 	;:saliency (grab-saliency ?piece-of-cloth)
 	 	:precondition (and (<= (number-executedIOb-grab ?piece-of-cloth) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-grab ?piece-of-cloth) 1) 
 	 	(executed-grab ?piece-of-cloth) 
 	 	 	  ) 
 	)  
 
	(:action use
 	 	:irrational 
 	 	:parameters (?guardianship - guardianship)
 	 	;:saliency (use-saliency ?guardianship)
 	 	:precondition (and (<= (number-executedIOb-use ?guardianship) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-use ?guardianship) 1) 
 	 	(executed-use ?guardianship) 
 	 	 	  ) 
 	)  
 
	(:action roll
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous)
 	 	;:saliency (roll-saliency ?ambiguous)
 	 	:precondition (and (<= (number-executedIOb-roll ?ambiguous) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-roll ?ambiguous) 1) 
 	 	(executed-roll ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action top
 	 	:irrational 
 	 	:parameters (?cloak - cloak)
 	 	;:saliency (top-saliency ?cloak)
 	 	:precondition (and (<= (number-executedIOb-top ?cloak) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-top ?cloak) 1) 
 	 	(executed-top ?cloak) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
