(define (domain 2ndex_philadelphiasushiroll) 
 
(:types 
food - physical-entity
elite - abstraction
floor-cover - whole
geographical-area - object
INSTANCE-OF=>-city - geographical-area
rotation - abstraction
salmonid - whole
expanse - abstraction
share - abstraction
dish - food
grain - foodstuff
environment - geographical-area
whole - object
object - physical-entity
abstraction - entity
dairy-product - foodstuff
foodstuff - food
physical-entity - entity
ambiguous - entity
for - prepositions
in - prepositions
into - prepositions
of - prepositions
on - prepositions
) 
 
(:constants 
them - ambiguous
sushi - dish
slices - share
sheet - expanse
salmon - salmonid
roll - rotation
rice - grain
philadelphia - INSTANCE-OF=>-city
parts - environment
nori - ambiguous
mat - floor-cover
cream - elite
cheese - dairy-product
sushi - for
roll - in
slices - into
parts - into
nori - of
sushi - of
mat - on
nori - on
) 
 
(:functions 
 	 (number-executed-turn) - (number 10) 
 	(number-executed-push) - (number 10) 
 	(number-executed-open) - (number 10) 
 	(number-executedDObIOb-cook ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cut ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-put ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-spread ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-lay ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-wrap ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-roll ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-cover ?o - object) - (number 5) 
 	) 
 
 	(:action turn
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-turn) 10) 
 	 	 	(executed-push) 
 	 	 	
 ) 
 	 	:effect (and (executed-turn) 
 	 	 	(increase (number-executed-turn) 1) 
 	 	 	  ) 
 	)  
 
	(:action push
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-push) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-push) 
 	 	 	(increase (number-executed-push) 1) 
 	 	 	  ) 
 	)  
 
	(:action open
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-open) 10) 
 	 	 	(executed-turn) 
 	 	 	
 ) 
 	 	:effect (and (executed-open) 
 	 	 	(increase (number-executed-open) 1) 
 	 	 	  ) 
 	)  
 
	(:action cook
 	 	:irrational 
 	 	:parameters (?grain - grain ?dish - dish)
 	 	;:saliency (cook-saliency ?grain ?dish)
 	 	:precondition (and (<= (number-executedDObIOb-cook ?grain ?dish) 5) 
 	 	 	 (property-for ?dish) 
 	 	 	(not (= ?grain ?dish))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cook ?grain ?dish) 1) 
 	 	(executed-cook ?grain ?dish) 
 	 	 	  ) 
 	)  
 
	(:action cut
 	 	:irrational 
 	 	:parameters (?salmonid - salmonid ?share - share)
 	 	;:saliency (cut-saliency ?salmonid ?share)
 	 	:precondition (and (<= (number-executedDObIOb-cut ?salmonid ?share) 5) 
 	 	 	 (property-into ?share) 
 	 	 	(not (= ?salmonid ?share))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cut ?salmonid ?share) 1) 
 	 	(executed-cut ?salmonid ?share) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?expanse - expanse ?ambiguous - ambiguous)
 	 	;:saliency (put-saliency ?expanse ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-put ?expanse ?ambiguous) 5) 
 	 	 	 (property-half ?expanse) 
 	 	 	(property-of ?ambiguous) 
 	 	 	(not (= ?expanse ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?expanse ?ambiguous) 1) 
 	 	(executed-put ?expanse ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action spread
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product ?ambiguous - ambiguous)
 	 	;:saliency (spread-saliency ?dairy-product ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-spread ?dairy-product ?ambiguous) 5) 
 	 	 	 (property-on ?ambiguous) 
 	 	 	(not (= ?dairy-product ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	(executed-open) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-spread ?dairy-product ?ambiguous) 1) 
 	 	(executed-spread ?dairy-product ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action lay
 	 	:irrational 
 	 	:parameters (?share - share ?dish - dish)
 	 	;:saliency (lay-saliency ?share ?dish)
 	 	:precondition (and (<= (number-executedDObIOb-lay ?share ?dish) 5) 
 	 	 	 (property-sliced ?dish) 
 	 	 	(property-of ?dish) 
 	 	 	(not (= ?share ?dish))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-lay ?share ?dish) 1) 
 	 	(executed-lay ?share ?dish) 
 	 	 	  ) 
 	)  
 
	(:action wrap
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?rotation - rotation)
 	 	;:saliency (wrap-saliency ?ambiguous ?rotation)
 	 	:precondition (and (<= (number-executedDObIOb-wrap ?ambiguous ?rotation) 5) 
 	 	 	 (property-in ?rotation) 
 	 	 	(not (= ?ambiguous ?rotation))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-wrap ?ambiguous ?rotation) 1) 
 	 	(executed-wrap ?ambiguous ?rotation) 
 	 	 	  ) 
 	)  
 
	(:action roll
 	 	:irrational 
 	 	:parameters (?environment1 - environment ?environment2 - environment)
 	 	;:saliency (roll-saliency ?environment1 ?environment2)
 	 	:precondition (and (<= (number-executedDObIOb-roll ?environment1 ?environment2) 5) 
 	 	 	 (property-into ?environment1) 
 	 	 	(not (= ?environment1 ?environment2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-roll ?environment1 ?environment2) 1) 
 	 	(executed-roll ?environment1 ?environment2) 
 	 	 	  ) 
 	)  
 
	(:action cover
 	 	:irrational 
 	 	:parameters (?floor-cover - floor-cover)
 	 	;:saliency (cover-saliency ?floor-cover)
 	 	:precondition (and (<= (number-executedIOb-cover ?floor-cover) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-cover ?floor-cover) 1) 
 	 	(executed-cover ?floor-cover) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
