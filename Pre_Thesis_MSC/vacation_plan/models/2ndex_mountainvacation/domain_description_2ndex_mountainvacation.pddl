(define (domain 2ndex_mountainvacation) 
 
(:types 
time-period - measure
object - entity
artifact - object
wheel - instrumentality
public-transport - instrumentality
large-indefinite-quantity - measure
natural-elevation - object
representation - artifact
case - psychological-feature
kind - psychological-feature
digit - measure
psychological-feature - abstraction
season - time-period
instrumentality - artifact
life - time-period
measure - abstraction
abstraction - entity
ambiguous - entity
for - prepositions
in - prepositions
of - prepositions
poss - prepositions
) 
 
(:constants 
summer - time-period
what - ambiguous
one - digit
your - ambiguous
type - kind
time - case
photos - representation
mountains - natural-elevation
lot - large-indefinite-quantity
location - object
locals - public-transport
gear - wheel
days - life
days - for
one - in
season - of
location - of
your - poss
) 
 
(:functions 
 	 (number-executed-relax) - (number 10) 
 	(number-executed-need) - (number 10) 
 	(number-executed-enjoy) - (number 10) 
 	(number-executedDObIOb-consider ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-choose ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-stay ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-offer ?o - object) - (number 5) 
 	(number-executedIOb-pack ?o - object) - (number 5) 
 	(number-executedIOb-meet ?o - object) - (number 5) 
 	) 
 
 	(:action relax
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-relax) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-relax) 
 	 	 	(increase (number-executed-relax) 1) 
 	 	 	  ) 
 	)  
 
	(:action need
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-need) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-need) 
 	 	 	(increase (number-executed-need) 1) 
 	 	 	  ) 
 	)  
 
	(:action enjoy
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-enjoy) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-enjoy) 
 	 	 	(increase (number-executed-enjoy) 1) 
 	 	 	  ) 
 	)  
 
	(:action consider
 	 	:irrational 
 	 	:parameters (?kind - kind ?object - object)
 	 	;:saliency (consider-saliency ?kind ?object)
 	 	:precondition (and (<= (number-executedDObIOb-consider ?kind ?object) 5) 
 	 	 	 (property-of ?object) 
 	 	 	(not (= ?kind ?object))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-consider ?kind ?object) 1) 
 	 	(executed-consider ?kind ?object) 
 	 	 	  ) 
 	)  
 
	(:action choose
 	 	:irrational 
 	 	:parameters (?time - time ?season - season)
 	 	;:saliency (choose-saliency ?time ?season)
 	 	:precondition (and (<= (number-executedDObIOb-choose ?time ?season) 5) 
 	 	 	 (property-of ?season) 
 	 	 	(not (= ?time ?season))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-choose ?time ?season) 1) 
 	 	(executed-choose ?time ?season) 
 	 	 	  ) 
 	)  
 
	(:action choose
 	 	:irrational 
 	 	:parameters (?case - case ?ambiguous - ambiguous)
 	 	;:saliency (choose-saliency ?case ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-choose ?case ?ambiguous) 5) 
 	 	 	 (property-poss ?ambiguous) 
 	 	 	(not (= ?case ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	(executed-offer ?ambiguous) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-choose ?case ?ambiguous) 1) 
 	 	(executed-choose ?case ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action stay
 	 	:irrational 
 	 	:parameters (?digit1 - digit ?digit2 - digit)
 	 	;:saliency (stay-saliency ?digit1 ?digit2)
 	 	:precondition (and (<= (number-executedDObIOb-stay ?digit1 ?digit2) 5) 
 	 	 	 (property-in ?digit1) 
 	 	 	(not (= ?digit1 ?digit2))
	 	 	(not (finished)) 
 	 	 	(executed-need) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-stay ?digit1 ?digit2) 1) 
 	 	(executed-stay ?digit1 ?digit2) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?life1 - life ?life2 - life)
 	 	;:saliency (place-saliency ?life1 ?life2)
 	 	:precondition (and (<= (number-executedDObIOb-place ?life1 ?life2) 5) 
 	 	 	 (property-few ?life1) 
 	 	 	(property-possible ?life1) 
 	 	 	(property-for ?life1) 
 	 	 	(not (= ?life1 ?life2))
	 	 	(not (finished)) 
 	 	 	(executed-need) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?life1 ?life2) 1) 
 	 	(executed-place ?life1 ?life2) 
 	 	 	  ) 
 	)  
 
	(:action offer
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous)
 	 	;:saliency (offer-saliency ?ambiguous)
 	 	:precondition (and (<= (number-executedIOb-offer ?ambiguous) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-offer ?ambiguous) 1) 
 	 	(executed-offer ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action pack
 	 	:irrational 
 	 	:parameters (?wheel - wheel)
 	 	;:saliency (pack-saliency ?wheel)
 	 	:precondition (and (<= (number-executedIOb-pack ?wheel) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-pack ?wheel) 1) 
 	 	(executed-pack ?wheel) 
 	 	 	  ) 
 	)  
 
	(:action meet
 	 	:irrational 
 	 	:parameters (?public-transport - public-transport)
 	 	;:saliency (meet-saliency ?public-transport)
 	 	:precondition (and (<= (number-executedIOb-meet ?public-transport) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-meet ?public-transport) 1) 
 	 	(executed-meet ?public-transport) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
