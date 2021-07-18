(define (domain 2ndex_bananasushi) 
 
(:types 
herb - object
food - matter
food - matter
boundary - object
sweetening - foodstuff
fundamental-quantity - abstraction
rotation - abstraction
share - abstraction
abstraction - entity
dairy-product - foodstuff
foodstuff - food
baked-goods - food
matter - physical-entity
object - physical-entity
physical-entity - entity
ambiguous - entity
along - prepositions
in - prepositions
of - prepositions
off - prepositions
over - prepositions
) 
 
(:constants 
the - ambiguous
syrup - sweetening
sugar - sweetening
slice - share
roll - rotation
nutella - ambiguous
length - fundamental-quantity
honey - sweetening
edges - boundary
butter - dairy-product
bread - baked-goods
banana - herb
length - along
honey - in
syrup - in
bread - of
bread - off
bread - over
slice - over
) 
 
(:functions 
 	 (number-executed-slice) - (number 10) 
 	(number-executed-serve) - (number 10) 
 	(number-executed-roll) - (number 10) 
 	(number-executedDObIOb-cut ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-spread ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-sprinkle ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cover ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-ends ?o - object) - (number 5) 
 	) 
 
 	(:action slice
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-slice) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-slice) 
 	 	 	(increase (number-executed-slice) 1) 
 	 	 	  ) 
 	)  
 
	(:action serve
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-serve) 10) 
 	 	 	(executed-slice) 
 	 	 	
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
 
	(:action cut
 	 	:irrational 
 	 	:parameters (?boundary - boundary ?baked-goods - baked-goods)
 	 	;:saliency (cut-saliency ?boundary ?baked-goods)
 	 	:precondition (and (<= (number-executedDObIOb-cut ?boundary ?baked-goods) 5) 
 	 	 	 (property-off ?baked-goods) 
 	 	 	(not (= ?boundary ?baked-goods))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cut ?boundary ?baked-goods) 1) 
 	 	(executed-cut ?boundary ?baked-goods) 
 	 	 	  ) 
 	)  
 
	(:action spread
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?baked-goods - baked-goods)
 	 	;:saliency (spread-saliency ?ambiguous ?baked-goods)
 	 	:precondition (and (<= (number-executedDObIOb-spread ?ambiguous ?baked-goods) 5) 
 	 	 	 (property-over ?baked-goods) 
 	 	 	(not (= ?ambiguous ?baked-goods))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-spread ?ambiguous ?baked-goods) 1) 
 	 	(executed-spread ?ambiguous ?baked-goods) 
 	 	 	  ) 
 	)  
 
	(:action spread
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product ?baked-goods - baked-goods)
 	 	;:saliency (spread-saliency ?dairy-product ?baked-goods)
 	 	:precondition (and (<= (number-executedDObIOb-spread ?dairy-product ?baked-goods) 5) 
 	 	 	 (property-over ?baked-goods) 
 	 	 	(not (= ?dairy-product ?baked-goods))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-spread ?dairy-product ?baked-goods) 1) 
 	 	(executed-spread ?dairy-product ?baked-goods) 
 	 	 	  ) 
 	)  
 
	(:action sprinkle
 	 	:irrational 
 	 	:parameters (?sweetening - sweetening ?share - share)
 	 	;:saliency (sprinkle-saliency ?sweetening ?share)
 	 	:precondition (and (<= (number-executedDObIOb-sprinkle ?sweetening ?share) 5) 
 	 	 	 (property-over ?share) 
 	 	 	(not (= ?sweetening ?share))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-sprinkle ?sweetening ?share) 1) 
 	 	(executed-sprinkle ?sweetening ?share) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?herb - herb ?fundamental-quantity - fundamental-quantity)
 	 	;:saliency (place-saliency ?herb ?fundamental-quantity)
 	 	:precondition (and (<= (number-executedDObIOb-place ?herb ?fundamental-quantity) 5) 
 	 	 	 (property-along ?fundamental-quantity) 
 	 	 	(not (= ?herb ?fundamental-quantity))
	 	 	 (not (finished)) 
 	 	 	(executed-ends ?herb) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?herb ?fundamental-quantity) 1) 
 	 	(executed-place ?herb ?fundamental-quantity) 
 	 	 	  ) 
 	)  
 
	(:action cover
 	 	:irrational 
 	 	:parameters (?rotation - rotation ?sweetening - sweetening)
 	 	;:saliency (cover-saliency ?rotation ?sweetening)
 	 	:precondition (and (<= (number-executedDObIOb-cover ?rotation ?sweetening) 5) 
 	 	 	 (or (property-golden ?sweetening) 
 	 	 	)
 	 	 	(property-in ?sweetening) 
 	 	 	(not (= ?rotation ?sweetening))
	 	 	 (not (finished)) 
 	 	 	(executed-roll) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-cover ?rotation ?sweetening) 1) 
 	 	(executed-cover ?rotation ?sweetening) 
 	 	 	  ) 
 	)  
 
	(:action ends
 	 	:irrational 
 	 	:parameters (?herb - herb)
 	 	;:saliency (ends-saliency ?herb)
 	 	:precondition (and (<= (number-executedIOb-ends ?herb) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-ends ?herb) 1) 
 	 	(executed-ends ?herb) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
