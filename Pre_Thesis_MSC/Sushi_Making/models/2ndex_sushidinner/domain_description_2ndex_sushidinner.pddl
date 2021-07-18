(define (domain 2ndex_sushidinner) 
 
(:types 
change-of-location - abstraction
flavorer - foodstuff
aquatic-vertebrate - object
component - object
food - matter
environment - object
expanse - abstraction
dish - food
produce - food
grain - foodstuff
object - physical-entity
material - substance
foodstuff - food
food - substance
substance - matter
matter - physical-entity
physical-entity - entity
abstraction - entity
ambiguous - entity
in - prepositions
) 
 
(:constants 
vegetables - produce
sushi - dish
sheets - expanse
setting - environment
rice - grain
meat - food
ingredients - component
fish - aquatic-vertebrate
fillings - material
everyone - ambiguous
condiments - flavorer
advance - change-of-location
advance - in
) 
 
(:functions 
 	 (number-executed-serve) - (number 10) 
 	(number-executed-purchase) - (number 10) 
 	(number-executedDObIOb-prepare ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-prepare ?o - object) - (number 5) 
 	(number-executedIOb-choose ?o - object) - (number 5) 
 	(number-executedIOb-arrange ?o - object) - (number 5) 
 	(number-executedIOb-allow ?o - object) - (number 5) 
 	(number-executedIOb-create ?o - object) - (number 5) 
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
 
	(:action purchase
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-purchase) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-purchase) 
 	 	 	(increase (number-executed-purchase) 1) 
 	 	 	  ) 
 	)  
 
	(:action prepare
 	 	:irrational 
 	 	:parameters (?grain - grain ?change-of-location - change-of-location)
 	 	;:saliency (prepare-saliency ?grain ?change-of-location)
 	 	:precondition (and (<= (number-executedDObIOb-prepare ?grain ?change-of-location) 5) 
 	 	 	 (property-thesushi ?grain) 
 	 	 	(property-in ?change-of-location) 
 	 	 	(not (= ?grain ?change-of-location))
	 	 	 (not (finished)) 
 	 	 	(executed-purchase) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-prepare ?grain ?change-of-location) 1) 
 	 	(executed-prepare ?grain ?change-of-location) 
 	 	 	  ) 
 	)  
 
	(:action prepare
 	 	:irrational 
 	 	:parameters (?component - component)
 	 	;:saliency (prepare-saliency ?component)
 	 	:precondition (and (<= (number-executedIOb-prepare ?component) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-purchase) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-prepare ?component) 1) 
 	 	(executed-prepare ?component) 
 	 	 	  ) 
 	)  
 
	(:action prepare
 	 	:irrational 
 	 	:parameters (?material - material)
 	 	;:saliency (prepare-saliency ?material)
 	 	:precondition (and (<= (number-executedIOb-prepare ?material) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-purchase) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-prepare ?material) 1) 
 	 	(executed-prepare ?material) 
 	 	 	  ) 
 	)  
 
	(:action choose
 	 	:irrational 
 	 	:parameters (?aquatic-vertebrate - aquatic-vertebrate)
 	 	;:saliency (choose-saliency ?aquatic-vertebrate)
 	 	:precondition (and (<= (number-executedIOb-choose ?aquatic-vertebrate) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-choose ?aquatic-vertebrate) 1) 
 	 	(executed-choose ?aquatic-vertebrate) 
 	 	 	  ) 
 	)  
 
	(:action choose
 	 	:irrational 
 	 	:parameters (?food - food)
 	 	;:saliency (choose-saliency ?food)
 	 	:precondition (and (<= (number-executedIOb-choose ?food) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-choose ?food) 1) 
 	 	(executed-choose ?food) 
 	 	 	  ) 
 	)  
 
	(:action choose
 	 	:irrational 
 	 	:parameters (?produce - produce)
 	 	;:saliency (choose-saliency ?produce)
 	 	:precondition (and (<= (number-executedIOb-choose ?produce) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-choose ?produce) 1) 
 	 	(executed-choose ?produce) 
 	 	 	  ) 
 	)  
 
	(:action choose
 	 	:irrational 
 	 	:parameters (?flavorer - flavorer)
 	 	;:saliency (choose-saliency ?flavorer)
 	 	:precondition (and (<= (number-executedIOb-choose ?flavorer) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-choose ?flavorer) 1) 
 	 	(executed-choose ?flavorer) 
 	 	 	  ) 
 	)  
 
	(:action arrange
 	 	:irrational 
 	 	:parameters (?environment - environment)
 	 	;:saliency (arrange-saliency ?environment)
 	 	:precondition (and (<= (number-executedIOb-arrange ?environment) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-arrange ?environment) 1) 
 	 	(executed-arrange ?environment) 
 	 	 	  ) 
 	)  
 
	(:action allow
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous)
 	 	;:saliency (allow-saliency ?ambiguous)
 	 	:precondition (and (<= (number-executedIOb-allow ?ambiguous) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-allow ?ambiguous) 1) 
 	 	(executed-allow ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action create
 	 	:irrational 
 	 	:parameters (?dish - dish)
 	 	;:saliency (create-saliency ?dish)
 	 	:precondition (and (<= (number-executedIOb-create ?dish) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-create ?dish) 1) 
 	 	(executed-create ?dish) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
