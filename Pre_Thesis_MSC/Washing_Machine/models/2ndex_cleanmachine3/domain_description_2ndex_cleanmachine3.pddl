(define (domain 2ndex_cleanmachine3) 
 
(:types 
content - psychological-feature
part - content
education - psychological-feature
time-interval - abstraction
movable-barrier - artifact
percussion-instrument - device
seal - device
environment - object
substance - physical-entity
salt - substance
condiment - substance
worker - whole
engineering - content
device - instrumentality
container - instrumentality
instrumentality - artifact
artifact - whole
whole - object
object - physical-entity
physical-entity - entity
psychological-feature - abstraction
abstraction - entity
onto - prepositions
poss - prepositions
with - prepositions
) 
 
(:constants 
its - engineering
washer - worker
vinegar - condiment
soda - salt
setting - environment
gasket - seal
drum - percussion-instrument
door - movable-barrier
dispenser - container
cycle - time-interval
course - education
components - part
setting - onto
its - poss
washer - poss
soda - with
vinegar - with
) 
 
(:functions 
 	 (number-executed-seals) - (number 10) 
 	(number-executed-filter) - (number 10) 
 	(number-executed-clean) - (number 10) 
 	(number-executedDObIOb-turn ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-fill ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-run ?o1 ?o2 - object) - (number 5) 
 	) 
 
 	(:action seals
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-seals) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-seals) 
 	 	 	(increase (number-executed-seals) 1) 
 	 	 	  ) 
 	)  
 
	(:action filter
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-filter) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-filter) 
 	 	 	(increase (number-executed-filter) 1) 
 	 	 	  ) 
 	)  
 
	(:action clean
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-clean) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-clean) 
 	 	 	(increase (number-executed-clean) 1) 
 	 	 	  ) 
 	)  
 
	(:action turn
 	 	:irrational 
 	 	:parameters (?worker - worker ?environment - environment)
 	 	;:saliency (turn-saliency ?worker ?environment)
 	 	:precondition (and (<= (number-executedDObIOb-turn ?worker ?environment) 5) 
 	 	 	 (property-hottest ?environment) 
 	 	 	(property-onto ?environment) 
 	 	 	(not (= ?worker ?environment))
	 	 	 (not (finished)) 
 	 	 	(executed-seals) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-turn ?worker ?environment) 1) 
 	 	(executed-turn ?worker ?environment) 
 	 	 	  ) 
 	)  
 
	(:action fill
 	 	:irrational 
 	 	:parameters (?percussion-instrument - percussion-instrument ?worker - worker)
 	 	;:saliency (fill-saliency ?percussion-instrument ?worker)
 	 	:precondition (and (<= (number-executedDObIOb-fill ?percussion-instrument ?worker) 5) 
 	 	 	 (property-poss ?worker) 
 	 	 	(not (= ?percussion-instrument ?worker))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-fill ?percussion-instrument ?worker) 1) 
 	 	(executed-fill ?percussion-instrument ?worker) 
 	 	 	  ) 
 	)  
 
	(:action run
 	 	:irrational 
 	 	:parameters (?education - education ?engineering - engineering)
 	 	;:saliency (run-saliency ?education ?engineering)
 	 	:precondition (and (<= (number-executedDObIOb-run ?education ?engineering) 5) 
 	 	 	 (property-full ?education) 
 	 	 	(property-poss ?engineering) 
 	 	 	(not (= ?education ?engineering))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-run ?education ?engineering) 1) 
 	 	(executed-run ?education ?engineering) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
