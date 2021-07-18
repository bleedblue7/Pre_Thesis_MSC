(define (domain 2ndex_fruitsushi) 
 
(:types 
whole - physical-entity
vessel - instrumentality
reproductive-structure - whole
guardianship - psychological-feature
energy - physical-entity
substance - physical-entity
written-record - abstraction
binary-compound - substance
pan - instrumentality
share - abstraction
sweetening - foodstuff
dish - food
cloak - artifact
engineering - psychological-feature
grain - foodstuff
dairy-product - foodstuff
foodstuff - food
food - substance
psychological-feature - abstraction
abstraction - entity
instrumentality - artifact
artifact - whole
physical-entity - entity
ambiguous - entity
for - prepositions
into - prepositions
onto - prepositions
poss - prepositions
to - prepositions
with - prepositions
) 
 
(:constants 
it - engineering
your - ambiguous
wrap - cloak
water - binary-compound
sushi - dish
sugar - sweetening
slices - share
saucepan - pan
salt - compound
rice - grain
minutes - written-record
milk - dairy-product
heat - energy
hands - guardianship
fruits - reproductive-structure
fruit - reproductive-structure
bowl - vessel
minutes - for
bowl - into
wrap - onto
your - poss
saucepan - to
water - with
) 
 
(:functions 
 	 (number-executed-serve) - (number 10) 
 	(number-executed-roll) - (number 10) 
 	(number-executed-lower) - (number 10) 
 	(number-executed-cut) - (number 10) 
 	(number-executed-cool) - (number 10) 
 	(number-executed-continue) - (number 10) 
 	(number-executedDObIOb-empty ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-use ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-add ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-spread ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-wait ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-fill ?o - object) - (number 5) 
 	(number-executedIOb-wash ?o - object) - (number 5) 
 	(number-executedIOb-cook ?o - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	(number-executedIOb-allow ?o - object) - (number 5) 
 	(number-executedIOb-place ?o - object) - (number 5) 
 	) 
 
 	(:action serve
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-serve) 10) 
 	 	 	(executed-roll) 
 	 	 	
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
 
	(:action lower
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-lower) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-lower) 
 	 	 	(increase (number-executed-lower) 1) 
 	 	 	  ) 
 	)  
 
	(:action cut
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-cut) 10) 
 	 	 	(executed-cool) 
 	 	 	
 ) 
 	 	:effect (and (executed-cut) 
 	 	 	(increase (number-executed-cut) 1) 
 	 	 	  ) 
 	)  
 
	(:action cool
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-cool) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-cool) 
 	 	 	(increase (number-executed-cool) 1) 
 	 	 	  ) 
 	)  
 
	(:action continue
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-continue) 10) 
 	 	 	(executed-lower) 
 	 	 	
 ) 
 	 	:effect (and (executed-continue) 
 	 	 	(increase (number-executed-continue) 1) 
 	 	 	  ) 
 	)  
 
	(:action empty
 	 	:irrational 
 	 	:parameters (?grain - grain ?vessel - vessel)
 	 	;:saliency (empty-saliency ?grain ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-empty ?grain ?vessel) 5) 
 	 	 	 (property-into ?vessel) 
 	 	 	(not (= ?grain ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-empty ?grain ?vessel) 1) 
 	 	(executed-empty ?grain ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action use
 	 	:irrational 
 	 	:parameters (?guardianship - guardianship ?ambiguous - ambiguous)
 	 	;:saliency (use-saliency ?guardianship ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-use ?guardianship ?ambiguous) 5) 
 	 	 	 (property-wash) 
 	 	 	(property-poss ?ambiguous) 
 	 	 	(not (= ?guardianship ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-use ?guardianship ?ambiguous) 1) 
 	 	(executed-use ?guardianship ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?binary-compound - binary-compound ?pan - pan)
 	 	;:saliency (add-saliency ?binary-compound ?pan)
 	 	:precondition (and (<= (number-executedDObIOb-add ?binary-compound ?pan) 5) 
 	 	 	 (property-to ?pan) 
 	 	 	(not (= ?binary-compound ?pan))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?binary-compound ?pan) 1) 
 	 	(executed-add ?binary-compound ?pan) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?grain - grain ?pan - pan)
 	 	;:saliency (add-saliency ?grain ?pan)
 	 	:precondition (and (<= (number-executedDObIOb-add ?grain ?pan) 5) 
 	 	 	 (property-to ?pan) 
 	 	 	(not (= ?grain ?pan))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?grain ?pan) 1) 
 	 	(executed-add ?grain ?pan) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?compound - compound ?pan - pan)
 	 	;:saliency (add-saliency ?compound ?pan)
 	 	:precondition (and (<= (number-executedDObIOb-add ?compound ?pan) 5) 
 	 	 	 (property-to ?pan) 
 	 	 	(not (= ?compound ?pan))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?compound ?pan) 1) 
 	 	(executed-add ?compound ?pan) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?sweetening - sweetening ?pan - pan)
 	 	;:saliency (add-saliency ?sweetening ?pan)
 	 	:precondition (and (<= (number-executedDObIOb-add ?sweetening ?pan) 5) 
 	 	 	 (property-to ?pan) 
 	 	 	(not (= ?sweetening ?pan))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?sweetening ?pan) 1) 
 	 	(executed-add ?sweetening ?pan) 
 	 	 	  ) 
 	)  
 
	(:action spread
 	 	:irrational 
 	 	:parameters (?grain - grain ?cloak - cloak)
 	 	;:saliency (spread-saliency ?grain ?cloak)
 	 	:precondition (and (<= (number-executedDObIOb-spread ?grain ?cloak) 5) 
 	 	 	 (property-plastic ?cloak) 
 	 	 	(property-onto ?cloak) 
 	 	 	(not (= ?grain ?cloak))
	 	 	 (not (finished)) 
 	 	 	(executed-allow ?grain) 
 	 	 	
(executed-cut) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-spread ?grain ?cloak) 1) 
 	 	(executed-spread ?grain ?cloak) 
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
 	 	 	(executed-continue) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-wait ?written-record1 ?written-record2) 1) 
 	 	(executed-wait ?written-record1 ?written-record2) 
 	 	 	  ) 
 	)  
 
	(:action fill
 	 	:irrational 
 	 	:parameters (?engineering - engineering)
 	 	;:saliency (fill-saliency ?engineering)
 	 	:precondition (and (<= (number-executedIOb-fill ?engineering) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-fill ?engineering) 1) 
 	 	(executed-fill ?engineering) 
 	 	 	  ) 
 	)  
 
	(:action wash
 	 	:irrational 
 	 	:parameters (?grain - grain)
 	 	;:saliency (wash-saliency ?grain)
 	 	:precondition (and (<= (number-executedIOb-wash ?grain) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-wash ?grain) 1) 
 	 	(executed-wash ?grain) 
 	 	 	  ) 
 	)  
 
	(:action cook
 	 	:irrational 
 	 	:parameters (?grain - grain)
 	 	;:saliency (cook-saliency ?grain)
 	 	:precondition (and (<= (number-executedIOb-cook ?grain) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-cook ?grain) 1) 
 	 	(executed-cook ?grain) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product)
 	 	;:saliency (add-saliency ?dairy-product)
 	 	:precondition (and (<= (number-executedIOb-add ?dairy-product) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?dairy-product) 1) 
 	 	(executed-add ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action allow
 	 	:irrational 
 	 	:parameters (?grain - grain)
 	 	;:saliency (allow-saliency ?grain)
 	 	:precondition (and (<= (number-executedIOb-allow ?grain) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-allow ?grain) 1) 
 	 	(executed-allow ?grain) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?share - share)
 	 	;:saliency (place-saliency ?share)
 	 	:precondition (and (<= (number-executedIOb-place ?share) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-place ?share) 1) 
 	 	(executed-place ?share) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
