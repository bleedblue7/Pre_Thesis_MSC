(define (domain 2ndex_beachvacation) 
 
(:types 
asset - abstraction
administrative-unit - abstraction
act - abstraction
examination - act
change - act
decrease - change
substance - physical-entity
structure - physical-entity
leisure - abstraction
buying - act
motion - change
physical-entity - entity
abstraction - entity
ambiguous - entity
for - prepositions
in - prepositions
of - prepositions
poss - prepositions
) 
 
(:constants 
your - ambiguous
vacations - leisure
travel - motion
shopping - buying
season - time-period
lodging - structure
location - object
food - substance
discounts - decrease
comparison - examination
agencies - administrative-unit
advantage - asset
vacations - for
travel - for
season - in
discounts - of
your - poss
) 
 
(:functions 
 	 (number-executed-sign) - (number 10) 
 	(number-executed-fly) - (number 10) 
 	(number-executed-drive) - (number 10) 
 	(number-executed-compare) - (number 10) 
 	(number-executed-alerts) - (number 10) 
 	(number-executedDObIOb-take ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cook ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-look ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-travel ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-do ?o - object) - (number 5) 
 	(number-executedIOb-search ?o - object) - (number 5) 
 	(number-executedIOb-choose ?o - object) - (number 5) 
 	(number-executedIOb-find ?o - object) - (number 5) 
 	) 
 
 	(:action sign
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-sign) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-sign) 
 	 	 	(increase (number-executed-sign) 1) 
 	 	 	  ) 
 	)  
 
	(:action fly
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-fly) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-fly) 
 	 	 	(increase (number-executed-fly) 1) 
 	 	 	  ) 
 	)  
 
	(:action drive
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-drive) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-drive) 
 	 	 	(increase (number-executed-drive) 1) 
 	 	 	  ) 
 	)  
 
	(:action compare
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-compare) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-compare) 
 	 	 	(increase (number-executed-compare) 1) 
 	 	 	  ) 
 	)  
 
	(:action alerts
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-alerts) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-alerts) 
 	 	 	(increase (number-executed-alerts) 1) 
 	 	 	  ) 
 	)  
 
	(:action take
 	 	:irrational 
 	 	:parameters (?asset - asset ?decrease - decrease)
 	 	;:saliency (take-saliency ?asset ?decrease)
 	 	:precondition (and (<= (number-executedDObIOb-take ?asset ?decrease) 5) 
 	 	 	 (property-of ?decrease) 
 	 	 	(not (= ?asset ?decrease))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-take ?asset ?decrease) 1) 
 	 	(executed-take ?asset ?decrease) 
 	 	 	  ) 
 	)  
 
	(:action cook
 	 	:irrational 
 	 	:parameters (?substance - substance ?ambiguous - ambiguous)
 	 	;:saliency (cook-saliency ?substance ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-cook ?substance ?ambiguous) 5) 
 	 	 	 (property-own ?substance) 
 	 	 	(property-poss ?ambiguous) 
 	 	 	(not (= ?substance ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cook ?substance ?ambiguous) 1) 
 	 	(executed-cook ?substance ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action look
 	 	:irrational 
 	 	:parameters (?leisure1 - leisure ?leisure2 - leisure)
 	 	;:saliency (look-saliency ?leisure1 ?leisure2)
 	 	:precondition (and (<= (number-executedDObIOb-look ?leisure1 ?leisure2) 5) 
 	 	 	 (property-inclusive ?leisure1) 
 	 	 	(property-for ?leisure1) 
 	 	 	(not (= ?leisure1 ?leisure2))
	 	 	(not (finished)) 
 	 	 	(executed-compare) 
 	 	 	
(executed-drive) 
 	 	 	
(executed-fly) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-look ?leisure1 ?leisure2) 1) 
 	 	(executed-look ?leisure1 ?leisure2) 
 	 	 	  ) 
 	)  
 
	(:action travel
 	 	:irrational 
 	 	:parameters (?time-period1 - time-period ?time-period2 - time-period)
 	 	;:saliency (travel-saliency ?time-period1 ?time-period2)
 	 	:precondition (and (<= (number-executedDObIOb-travel ?time-period1 ?time-period2) 5) 
 	 	 	 (property-off ?time-period1) 
 	 	 	(property-in ?time-period1) 
 	 	 	(not (= ?time-period1 ?time-period2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-travel ?time-period1 ?time-period2) 1) 
 	 	(executed-travel ?time-period1 ?time-period2) 
 	 	 	  ) 
 	)  
 
	(:action do
 	 	:irrational 
 	 	:parameters (?buying - buying)
 	 	;:saliency (do-saliency ?buying)
 	 	:precondition (and (<= (number-executedIOb-do ?buying) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-do ?buying) 1) 
 	 	(executed-do ?buying) 
 	 	 	  ) 
 	)  
 
	(:action search
 	 	:irrational 
 	 	:parameters (?administrative-unit - administrative-unit)
 	 	;:saliency (search-saliency ?administrative-unit)
 	 	:precondition (and (<= (number-executedIOb-search ?administrative-unit) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-search ?administrative-unit) 1) 
 	 	(executed-search ?administrative-unit) 
 	 	 	  ) 
 	)  
 
	(:action choose
 	 	:irrational 
 	 	:parameters (?object - object)
 	 	;:saliency (choose-saliency ?object)
 	 	:precondition (and (<= (number-executedIOb-choose ?object) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-alerts) 
 	 	 	
(executed-sign) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-choose ?object) 1) 
 	 	(executed-choose ?object) 
 	 	 	  ) 
 	)  
 
	(:action find
 	 	:irrational 
 	 	:parameters (?structure - structure)
 	 	;:saliency (find-saliency ?structure)
 	 	:precondition (and (<= (number-executedIOb-find ?structure) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-find ?structure) 1) 
 	 	(executed-find ?structure) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
