(define (domain 2ndex_installamachine) 
 
(:types 
act - psychological-feature
emptying - action
body-part - physical-entity
vertebrate-foot - body-part
bad-temper - abstraction
footwear - artifact
construction - act
device - artifact
score - action
indefinite-quantity - abstraction
experiment - psychological-feature
worker - whole
binary-compound - physical-entity
structure - body-part
point - location
artifact - whole
whole - object
action - act
psychological-feature - abstraction
abstraction - entity
region - location
location - object
object - physical-entity
physical-entity - entity
ambiguous - entity
poss - prepositions
) 
 
(:constants 
your - ambiguous
water - binary-compound
washer - worker
valve - structure
test - experiment
supply - indefinite-quantity
spot - point
run - score
machine - device
leveling - construction
hoses - footwear
hose - footwear
fit - bad-temper
feet - vertebrate-foot
drain - emptying
area - region
your - poss
) 
 
(:functions 
 	 (number-executed-use) - (number 10) 
 	(number-executed-pan) - (number 10) 
 	(number-executedDObIOb-check ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-switch ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-choose ?o - object) - (number 5) 
 	(number-executedIOb-measure ?o - object) - (number 5) 
 	(number-executedIOb-ensure ?o - object) - (number 5) 
 	(number-executedIOb-adjust ?o - object) - (number 5) 
 	(number-executedIOb-remove ?o - object) - (number 5) 
 	(number-executedIOb-connect ?o - object) - (number 5) 
 	(number-executedIOb-set ?o - object) - (number 5) 
 	(number-executedIOb-try ?o - object) - (number 5) 
 	) 
 
 	(:action use
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-use) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-use) 
 	 	 	(increase (number-executed-use) 1) 
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
 
	(:action check
 	 	:irrational 
 	 	:parameters (?footwear - footwear ?ambiguous - ambiguous)
 	 	;:saliency (check-saliency ?footwear ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-check ?footwear ?ambiguous) 5) 
 	 	 	 (property-poss ?ambiguous) 
 	 	 	(not (= ?footwear ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-check ?footwear ?ambiguous) 1) 
 	 	(executed-check ?footwear ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action switch
 	 	:irrational 
 	 	:parameters (?structure - structure ?ambiguous - ambiguous)
 	 	;:saliency (switch-saliency ?structure ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-switch ?structure ?ambiguous) 5) 
 	 	 	 (property-washing ?structure) 
 	 	 	(property-poss ?ambiguous) 
 	 	 	(not (= ?structure ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-switch ?structure ?ambiguous) 1) 
 	 	(executed-switch ?structure ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action choose
 	 	:irrational 
 	 	:parameters (?point - point)
 	 	;:saliency (choose-saliency ?point)
 	 	:precondition (and (<= (number-executedIOb-choose ?point) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-choose ?point) 1) 
 	 	(executed-choose ?point) 
 	 	 	  ) 
 	)  
 
	(:action measure
 	 	:irrational 
 	 	:parameters (?region - region)
 	 	;:saliency (measure-saliency ?region)
 	 	:precondition (and (<= (number-executedIOb-measure ?region) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-measure ?region) 1) 
 	 	(executed-measure ?region) 
 	 	 	  ) 
 	)  
 
	(:action ensure
 	 	:irrational 
 	 	:parameters (?bad-temper - bad-temper)
 	 	;:saliency (ensure-saliency ?bad-temper)
 	 	:precondition (and (<= (number-executedIOb-ensure ?bad-temper) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-ensure ?bad-temper) 1) 
 	 	(executed-ensure ?bad-temper) 
 	 	 	  ) 
 	)  
 
	(:action adjust
 	 	:irrational 
 	 	:parameters (?vertebrate-foot - vertebrate-foot)
 	 	;:saliency (adjust-saliency ?vertebrate-foot)
 	 	:precondition (and (<= (number-executedIOb-adjust ?vertebrate-foot) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-adjust ?vertebrate-foot) 1) 
 	 	(executed-adjust ?vertebrate-foot) 
 	 	 	  ) 
 	)  
 
	(:action remove
 	 	:irrational 
 	 	:parameters (?worker - worker)
 	 	;:saliency (remove-saliency ?worker)
 	 	:precondition (and (<= (number-executedIOb-remove ?worker) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-remove ?worker) 1) 
 	 	(executed-remove ?worker) 
 	 	 	  ) 
 	)  
 
	(:action connect
 	 	:irrational 
 	 	:parameters (?footwear - footwear)
 	 	;:saliency (connect-saliency ?footwear)
 	 	:precondition (and (<= (number-executedIOb-connect ?footwear) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-connect ?footwear) 1) 
 	 	(executed-connect ?footwear) 
 	 	 	  ) 
 	)  
 
	(:action set
 	 	:irrational 
 	 	:parameters (?footwear - footwear)
 	 	;:saliency (set-saliency ?footwear)
 	 	:precondition (and (<= (number-executedIOb-set ?footwear) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-connect ?footwear) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-set ?footwear) 1) 
 	 	(executed-set ?footwear) 
 	 	 	  ) 
 	)  
 
	(:action try
 	 	:irrational 
 	 	:parameters (?score - score)
 	 	;:saliency (try-saliency ?score)
 	 	:precondition (and (<= (number-executedIOb-try ?score) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-try ?score) 1) 
 	 	(executed-try ?score) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
