(define (domain 2ndex_familyvacation) 
 
(:types 
improvement - happening
object - entity
hose - artifact
heavier-than-air-craft - artifact
fund - measure
juvenile - whole
social-group - abstraction
pair - social-group
end - object
imagination - cognition
unit - social-group
state - abstraction
curiosity - state
permission - communication
possibility - state
plan - content
commercial-document - communication
leisure - measure
case - happening
communication - abstraction
representation - content
content - cognition
cognition - psychological-feature
measure - abstraction
artifact - whole
whole - object
act - event
happening - event
event - psychological-feature
psychological-feature - abstraction
abstraction - entity
ambiguous - entity
as - prepositions
for - prepositions
on - prepositions
poss - prepositions
to - prepositions
with - prepositions
) 
 
(:constants 
your - ambiguous
vacation - leisure
time - case
tickets - commercial-document
schedule - plan
quality - attribute
potential - possibility
passport - permission
memories - representation
interests - curiosity
group - abstraction
family - unit
dream - imagination
destination - end
couple - pair
child - juvenile
budget - fund
airplane - heavier-than-air-craft
airline - hose
activities - act
accommodation - improvement
family - as
activities - for
potential - for
time - for
airplane - on
your - poss
vacation - to
destination - to
family - with
) 
 
(:functions 
 	 (number-executed-dates) - (number 10) 
 	(number-executed-build) - (number 10) 
 	(number-executedDObIOb-list ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-define ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-book ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-destination ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-travel ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-vacation ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-drive ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-family ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-memories ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-allow ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-plan ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-purchase ?o - object) - (number 5) 
 	(number-executedIOb-get ?o - object) - (number 5) 
 	(number-executedIOb-keep ?o - object) - (number 5) 
 	(number-executedIOb-plan ?o - object) - (number 5) 
 	) 
 
 	(:action dates
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-dates) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-dates) 
 	 	 	(increase (number-executed-dates) 1) 
 	 	 	  ) 
 	)  
 
	(:action build
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-build) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-build) 
 	 	 	(increase (number-executed-build) 1) 
 	 	 	  ) 
 	)  
 
	(:action list
 	 	:irrational 
 	 	:parameters (?curiosity - curiosity ?unit - unit)
 	 	;:saliency (list-saliency ?curiosity ?unit)
 	 	:precondition (and (<= (number-executedDObIOb-list ?curiosity ?unit) 5) 
 	 	 	 (property-as ?unit) 
 	 	 	(not (= ?curiosity ?unit))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-list ?curiosity ?unit) 1) 
 	 	(executed-list ?curiosity ?unit) 
 	 	 	  ) 
 	)  
 
	(:action list
 	 	:irrational 
 	 	:parameters (?curiosity - curiosity ?ambiguous - ambiguous)
 	 	;:saliency (list-saliency ?curiosity ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-list ?curiosity ?ambiguous) 5) 
 	 	 	 (property-poss ?ambiguous) 
 	 	 	(not (= ?curiosity ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-list ?curiosity ?ambiguous) 1) 
 	 	(executed-list ?curiosity ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action define
 	 	:irrational 
 	 	:parameters (?fund - fund ?ambiguous - ambiguous)
 	 	;:saliency (define-saliency ?fund ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-define ?fund ?ambiguous) 5) 
 	 	 	 (property-poss ?ambiguous) 
 	 	 	(not (= ?fund ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-define ?fund ?ambiguous) 1) 
 	 	(executed-define ?fund ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action book
 	 	:irrational 
 	 	:parameters (?improvement - improvement ?ambiguous - ambiguous)
 	 	;:saliency (book-saliency ?improvement ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-book ?improvement ?ambiguous) 5) 
 	 	 	 (property-poss ?ambiguous) 
 	 	 	(not (= ?improvement ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-book ?improvement ?ambiguous) 1) 
 	 	(executed-book ?improvement ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action destination
 	 	:irrational 
 	 	:parameters (?ambiguous1 - ambiguous ?ambiguous2 - ambiguous)
 	 	;:saliency (destination-saliency ?ambiguous1 ?ambiguous2)
 	 	:precondition (and (<= (number-executedDObIOb-destination ?ambiguous1 ?ambiguous2) 5) 
 	 	 	 (property-poss ?ambiguous1) 
 	 	 	(property-to) 
 	 	 	(not (= ?ambiguous1 ?ambiguous2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-destination ?ambiguous1 ?ambiguous2) 1) 
 	 	(executed-destination ?ambiguous1 ?ambiguous2) 
 	 	 	  ) 
 	)  
 
	(:action travel
 	 	:irrational 
 	 	:parameters (?heavier-than-air-craft - heavier-than-air-craft ?end - end)
 	 	;:saliency (travel-saliency ?heavier-than-air-craft ?end)
 	 	:precondition (and (<= (number-executedDObIOb-travel ?heavier-than-air-craft ?end) 5) 
 	 	 	 (property-on ?heavier-than-air-craft) 
 	 	 	(property-to ?end) 
 	 	 	(not (= ?heavier-than-air-craft ?end))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-travel ?heavier-than-air-craft ?end) 1) 
 	 	(executed-travel ?heavier-than-air-craft ?end) 
 	 	 	  ) 
 	)  
 
	(:action vacation
 	 	:irrational 
 	 	:parameters (?ambiguous1 - ambiguous ?ambiguous2 - ambiguous)
 	 	;:saliency (vacation-saliency ?ambiguous1 ?ambiguous2)
 	 	:precondition (and (<= (number-executedDObIOb-vacation ?ambiguous1 ?ambiguous2) 5) 
 	 	 	 (property-poss ?ambiguous1) 
 	 	 	(property-to) 
 	 	 	(not (= ?ambiguous1 ?ambiguous2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-vacation ?ambiguous1 ?ambiguous2) 1) 
 	 	(executed-vacation ?ambiguous1 ?ambiguous2) 
 	 	 	  ) 
 	)  
 
	(:action drive
 	 	:irrational 
 	 	:parameters (?leisure1 - leisure ?leisure2 - leisure)
 	 	;:saliency (drive-saliency ?leisure1 ?leisure2)
 	 	:precondition (and (<= (number-executedDObIOb-drive ?leisure1 ?leisure2) 5) 
 	 	 	 (property-to ?leisure1) 
 	 	 	(not (= ?leisure1 ?leisure2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-drive ?leisure1 ?leisure2) 1) 
 	 	(executed-drive ?leisure1 ?leisure2) 
 	 	 	  ) 
 	)  
 
	(:action family
 	 	:irrational 
 	 	:parameters (?ambiguous1 - ambiguous ?ambiguous2 - ambiguous)
 	 	;:saliency (family-saliency ?ambiguous1 ?ambiguous2)
 	 	:precondition (and (<= (number-executedDObIOb-family ?ambiguous1 ?ambiguous2) 5) 
 	 	 	 (property-poss ?ambiguous1) 
 	 	 	(property-with) 
 	 	 	(not (= ?ambiguous1 ?ambiguous2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-family ?ambiguous1 ?ambiguous2) 1) 
 	 	(executed-family ?ambiguous1 ?ambiguous2) 
 	 	 	  ) 
 	)  
 
	(:action memories
 	 	:irrational 
 	 	:parameters (?unit1 - unit ?unit2 - unit)
 	 	;:saliency (memories-saliency ?unit1 ?unit2)
 	 	:precondition (and (<= (number-executedDObIOb-memories ?unit1 ?unit2) 5) 
 	 	 	 (property-with ?unit1) 
 	 	 	(not (= ?unit1 ?unit2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-memories ?unit1 ?unit2) 1) 
 	 	(executed-memories ?unit1 ?unit2) 
 	 	 	  ) 
 	)  
 
	(:action allow
 	 	:irrational 
 	 	:parameters (?act1 - act ?act2 - act)
 	 	;:saliency (allow-saliency ?act1 ?act2)
 	 	:precondition (and (<= (number-executedDObIOb-allow ?act1 ?act2) 5) 
 	 	 	 (property-different ?act1) 
 	 	 	(property-for ?act1) 
 	 	 	(not (= ?act1 ?act2))
	 	 	(not (finished)) 
 	 	 	(executed-build) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-allow ?act1 ?act2) 1) 
 	 	(executed-allow ?act1 ?act2) 
 	 	 	  ) 
 	)  
 
	(:action plan
 	 	:irrational 
 	 	:parameters (?case1 - case ?case2 - case)
 	 	;:saliency (plan-saliency ?case1 ?case2)
 	 	:precondition (and (<= (number-executedDObIOb-plan ?case1 ?case2) 5) 
 	 	 	 (property-for ?case1) 
 	 	 	(not (= ?case1 ?case2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-plan ?case1 ?case2) 1) 
 	 	(executed-plan ?case1 ?case2) 
 	 	 	  ) 
 	)  
 
	(:action purchase
 	 	:irrational 
 	 	:parameters (?commercial-document - commercial-document)
 	 	;:saliency (purchase-saliency ?commercial-document)
 	 	:precondition (and (<= (number-executedIOb-purchase ?commercial-document) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-dates) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-purchase ?commercial-document) 1) 
 	 	(executed-purchase ?commercial-document) 
 	 	 	  ) 
 	)  
 
	(:action get
 	 	:irrational 
 	 	:parameters (?permission - permission)
 	 	;:saliency (get-saliency ?permission)
 	 	:precondition (and (<= (number-executedIOb-get ?permission) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-get ?permission) 1) 
 	 	(executed-get ?permission) 
 	 	 	  ) 
 	)  
 
	(:action keep
 	 	:irrational 
 	 	:parameters (?plan - plan)
 	 	;:saliency (keep-saliency ?plan)
 	 	:precondition (and (<= (number-executedIOb-keep ?plan) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-keep ?plan) 1) 
 	 	(executed-keep ?plan) 
 	 	 	  ) 
 	)  
 
	(:action plan
 	 	:irrational 
 	 	:parameters (?possibility - possibility)
 	 	;:saliency (plan-saliency ?possibility)
 	 	:precondition (and (<= (number-executedIOb-plan ?possibility) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-plan ?possibility) 1) 
 	 	(executed-plan ?possibility) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
