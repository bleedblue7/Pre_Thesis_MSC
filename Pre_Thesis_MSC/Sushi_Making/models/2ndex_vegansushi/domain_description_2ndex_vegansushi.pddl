(define (domain 2ndex_vegansushi) 
 
(:types 
artifact - object
mixer - implement
vessel - instrumentality
area - object
crockery - artifact
cooking - abstraction
component - object
edge-tool - implement
floor-cover - artifact
written-record - abstraction
food - matter
white-goods - artifact
time-unit - abstraction
dish - food
flavorer - foodstuff
food - matter
condiment - flavorer
produce - food
sweetening - flavorer
grain - foodstuff
foodstuff - food
matter - physical-entity
abstraction - entity
implement - instrumentality
instrumentality - artifact
object - physical-entity
physical-entity - entity
ambiguous - entity
for - prepositions
in - prepositions
into - prepositions
npmod - prepositions
of - prepositions
onto - prepositions
) 
 
(:constants 
nori - ambiguous
norisheet - ambiguous
vinegar - condiment
vegetable - produce
syrup - sweetening
sushi - dish
seconds - time-unit
rice - grain
refrigerator - white-goods
pieces - part
nori-sheet - ambiguous
mixture - substance
minutes - written-record
medium - instrumentality
mat - floor-cover
knife - edge-tool
ingredients - component
gomashio - ambiguous
frying - cooking
cup - crockery
center - area
bowl - vessel
blender - mixer
sushi - for
seconds - for
minutes - for
refrigerator - in
frying - in
center - into
pieces - into
blender - into
sushi - npmod
rice - of
mixture - of
norisheet - of
mat - onto
) 
 
(:functions 
 	 (number-executed-serve) - (number 10) 
 	(number-executed-roll) - (number 10) 
 	(number-executed-pan) - (number 10) 
 	(number-executed-gomashio) - (number 10) 
 	(number-executed-chill) - (number 10) 
 	(number-executedDObIOb-toast ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-pour ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-pulse ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-assemble ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-take ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-add ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-mixture ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-wait ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-spread ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-away ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cut ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-take ?o - object) - (number 5) 
 	(number-executedIOb-stir ?o - object) - (number 5) 
 	(number-executedIOb-use ?o - object) - (number 5) 
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
 
	(:action pan
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-pan) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-pan) 
 	 	 	(increase (number-executed-pan) 1) 
 	 	 	  ) 
 	)  
 
	(:action gomashio
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-gomashio) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-gomashio) 
 	 	 	(increase (number-executed-gomashio) 1) 
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
 
	(:action toast
 	 	:irrational 
 	 	:parameters (?component - component ?cooking - cooking)
 	 	;:saliency (toast-saliency ?component ?cooking)
 	 	:precondition (and (<= (number-executedDObIOb-toast ?component ?cooking) 5) 
 	 	 	 (property-dry ?cooking) 
 	 	 	(property-in ?cooking) 
 	 	 	(not (= ?component ?cooking))
	 	 	 (not (finished)) 
 	 	 	(executed-pan) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-toast ?component ?cooking) 1) 
 	 	(executed-toast ?component ?cooking) 
 	 	 	  ) 
 	)  
 
	(:action pour
 	 	:irrational 
 	 	:parameters (?substance - substance ?mixer - mixer)
 	 	;:saliency (pour-saliency ?substance ?mixer)
 	 	:precondition (and (<= (number-executedDObIOb-pour ?substance ?mixer) 5) 
 	 	 	 (property-into ?mixer) 
 	 	 	(not (= ?substance ?mixer))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-pour ?substance ?mixer) 1) 
 	 	(executed-pour ?substance ?mixer) 
 	 	 	  ) 
 	)  
 
	(:action pulse
 	 	:irrational 
 	 	:parameters (?substance - substance ?time-unit - time-unit)
 	 	;:saliency (pulse-saliency ?substance ?time-unit)
 	 	:precondition (and (<= (number-executedDObIOb-pulse ?substance ?time-unit) 5) 
 	 	 	 (property-for ?time-unit) 
 	 	 	(not (= ?substance ?time-unit))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-pulse ?substance ?time-unit) 1) 
 	 	(executed-pulse ?substance ?time-unit) 
 	 	 	  ) 
 	)  
 
	(:action assemble
 	 	:irrational 
 	 	:parameters (?component - component ?dish - dish)
 	 	;:saliency (assemble-saliency ?component ?dish)
 	 	:precondition (and (<= (number-executedDObIOb-assemble ?component ?dish) 5) 
 	 	 	 (property-necessary ?component) 
 	 	 	(property-for ?dish) 
 	 	 	(not (= ?component ?dish))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-assemble ?component ?dish) 1) 
 	 	(executed-assemble ?component ?dish) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?floor-cover - floor-cover)
 	 	;:saliency (place-saliency ?ambiguous ?floor-cover)
 	 	:precondition (and (<= (number-executedDObIOb-place ?ambiguous ?floor-cover) 5) 
 	 	 	 (property-onto ?floor-cover) 
 	 	 	(not (= ?ambiguous ?floor-cover))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?ambiguous ?floor-cover) 1) 
 	 	(executed-place ?ambiguous ?floor-cover) 
 	 	 	  ) 
 	)  
 
	(:action take
 	 	:irrational 
 	 	:parameters (?crockery - crockery ?substance - substance)
 	 	;:saliency (take-saliency ?crockery ?substance)
 	 	:precondition (and (<= (number-executedDObIOb-take ?crockery ?substance) 5) 
 	 	 	 (property-of ?substance) 
 	 	 	(not (= ?crockery ?substance))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-take ?crockery ?substance) 1) 
 	 	(executed-take ?crockery ?substance) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?produce - produce ?area - area)
 	 	;:saliency (add-saliency ?produce ?area)
 	 	:precondition (and (<= (number-executedDObIOb-add ?produce ?area) 5) 
 	 	 	 (property-little ?produce) 
 	 	 	(property-into ?area) 
 	 	 	(not (= ?produce ?area))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?produce ?area) 1) 
 	 	(executed-add ?produce ?area) 
 	 	 	  ) 
 	)  
 
	(:action mixture
 	 	:irrational 
 	 	:parameters (?white-goods1 - white-goods ?white-goods2 - white-goods)
 	 	;:saliency (mixture-saliency ?white-goods1 ?white-goods2)
 	 	:precondition (and (<= (number-executedDObIOb-mixture ?white-goods1 ?white-goods2) 5) 
 	 	 	 (property-in ?white-goods1) 
 	 	 	(not (= ?white-goods1 ?white-goods2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-mixture ?white-goods1 ?white-goods2) 1) 
 	 	(executed-mixture ?white-goods1 ?white-goods2) 
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
 	 	 	(executed-chill) 
 	 	 	
(executed-pan) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-wait ?written-record1 ?written-record2) 1) 
 	 	(executed-wait ?written-record1 ?written-record2) 
 	 	 	  ) 
 	)  
 
	(:action spread
 	 	:irrational 
 	 	:parameters (?ambiguous1 - ambiguous ?ambiguous2 - ambiguous)
 	 	;:saliency (spread-saliency ?ambiguous1 ?ambiguous2)
 	 	:precondition (and (<= (number-executedDObIOb-spread ?ambiguous1 ?ambiguous2) 5) 
 	 	 	 (property-of ?ambiguous1) 
 	 	 	(not (= ?ambiguous1 ?ambiguous2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-spread ?ambiguous1 ?ambiguous2) 1) 
 	 	(executed-spread ?ambiguous1 ?ambiguous2) 
 	 	 	  ) 
 	)  
 
	(:action away
 	 	:irrational 
 	 	:parameters (?dish1 - dish ?dish2 - dish)
 	 	;:saliency (away-saliency ?dish1 ?dish2)
 	 	:precondition (and (<= (number-executedDObIOb-away ?dish1 ?dish2) 5) 
 	 	 	 (property-npmod ?dish1) 
 	 	 	(not (= ?dish1 ?dish2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-away ?dish1 ?dish2) 1) 
 	 	(executed-away ?dish1 ?dish2) 
 	 	 	  ) 
 	)  
 
	(:action cut
 	 	:irrational 
 	 	:parameters (?part1 - part ?part2 - part)
 	 	;:saliency (cut-saliency ?part1 ?part2)
 	 	:precondition (and (<= (number-executedDObIOb-cut ?part1 ?part2) 5) 
 	 	 	 (property-into ?part1) 
 	 	 	(not (= ?part1 ?part2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cut ?part1 ?part2) 1) 
 	 	(executed-cut ?part1 ?part2) 
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
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?grain - grain)
 	 	;:saliency (stir-saliency ?grain)
 	 	:precondition (and (<= (number-executedIOb-stir ?grain) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-stir ?grain) 1) 
 	 	(executed-stir ?grain) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?sweetening - sweetening)
 	 	;:saliency (stir-saliency ?sweetening)
 	 	:precondition (and (<= (number-executedIOb-stir ?sweetening) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-stir ?sweetening) 1) 
 	 	(executed-stir ?sweetening) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?condiment - condiment)
 	 	;:saliency (stir-saliency ?condiment)
 	 	:precondition (and (<= (number-executedIOb-stir ?condiment) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-stir ?condiment) 1) 
 	 	(executed-stir ?condiment) 
 	 	 	  ) 
 	)  
 
	(:action use
 	 	:irrational 
 	 	:parameters (?edge-tool - edge-tool)
 	 	;:saliency (use-saliency ?edge-tool)
 	 	:precondition (and (<= (number-executedIOb-use ?edge-tool) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-roll) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-use ?edge-tool) 1) 
 	 	(executed-use ?edge-tool) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
