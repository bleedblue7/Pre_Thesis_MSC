(define (domain 2ndex_doughicecreamcookie) 
 
(:types 
potato - food
elite - entity
dish - food
ovum - living-thing
electric-refrigerator - artifact
component - object
binary-compound - substance
sweetening - foodstuff
orchid - living-thing
receptacle - container
device - instrumentality
crystal - solid
living-thing - whole
beverage - food
food - solid
solid - matter
dairy-product - foodstuff
foodstuff - food
food - substance
substance - matter
matter - physical-entity
vessel - container
container - instrumentality
instrumentality - artifact
artifact - whole
whole - object
object - physical-entity
physical-entity - entity
in - prepositions
into - prepositions
with - prepositions
) 
 
(:constants 
yolks - ingredient
water - binary-compound
vanilla - orchid
tray - receptacle
sugar - sweetening
salt - compound
mixture - substance
milk - dairy-product
machine - device
ingredients - component
ice - crystal
freezer - electric-refrigerator
flour - foodstuff
egg - ovum
custard - dish
cream - elite
chocolate - beverage
chips - potato
butter - dairy-product
bowl - vessel
bath - vessel
machine - in
bath - in
chocolate - in
cream - in
flour - in
salt - in
vanilla - in
freezer - in
bowl - in
mixture - into
ice - with
) 
 
(:functions 
 	 (number-executed-heat) - (number 10) 
 	(number-executed-finished) - (number 10) 
 	(number-executed-cream) - (number 10) 
 	(number-executed-chips) - (number 10) 
 	(number-executedDObIOb-fill ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cool ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-whisk ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-stir ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-store ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-combine ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-pulse ?o - object) - (number 5) 
 	(number-executedIOb-prepare ?o - object) - (number 5) 
 	(number-executedIOb-whisk ?o - object) - (number 5) 
 	(number-executedIOb-set ?o - object) - (number 5) 
 	(number-executedIOb-fill ?o - object) - (number 5) 
 	(number-executedIOb-combine ?o - object) - (number 5) 
 	(number-executedIOb-fold ?o - object) - (number 5) 
 	(number-executedIOb-freeze ?o - object) - (number 5) 
 	(number-executedIOb-stir ?o - object) - (number 5) 
 	) 
 
 	(:action heat
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-heat) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-heat) 
 	 	 	(increase (number-executed-heat) 1) 
 	 	 	  ) 
 	)  
 
	(:action finished
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-finished) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-finished) 
 	 	 	(increase (number-executed-finished) 1) 
 	 	 	  ) 
 	)  
 
	(:action cream
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-cream) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-cream) 
 	 	 	(increase (number-executed-cream) 1) 
 	 	 	  ) 
 	)  
 
	(:action chips
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-chips) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-chips) 
 	 	 	(increase (number-executed-chips) 1) 
 	 	 	  ) 
 	)  
 
	(:action fill
 	 	:irrational 
 	 	:parameters (?vessel - vessel ?crystal - crystal)
 	 	;:saliency (fill-saliency ?vessel ?crystal)
 	 	:precondition (and (<= (number-executedDObIOb-fill ?vessel ?crystal) 5) 
 	 	 	 (property-with ?crystal) 
 	 	 	(not (= ?vessel ?crystal))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-fill ?vessel ?crystal) 1) 
 	 	(executed-fill ?vessel ?crystal) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product ?substance - substance)
 	 	;:saliency (whisk-saliency ?dairy-product ?substance)
 	 	:precondition (and (<= (number-executedDObIOb-whisk ?dairy-product ?substance) 5) 
 	 	 	 (property-into ?substance) 
 	 	 	(not (= ?dairy-product ?substance))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-whisk ?dairy-product ?substance) 1) 
 	 	(executed-whisk ?dairy-product ?substance) 
 	 	 	  ) 
 	)  
 
	(:action cool
 	 	:irrational 
 	 	:parameters (?dish - dish ?vessel - vessel)
 	 	;:saliency (cool-saliency ?dish ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-cool ?dish ?vessel) 5) 
 	 	 	 (property-in ?vessel) 
 	 	 	(not (= ?dish ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cool ?dish ?vessel) 1) 
 	 	(executed-cool ?dish ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?elite - elite ?vessel - vessel)
 	 	;:saliency (whisk-saliency ?elite ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-whisk ?elite ?vessel) 5) 
 	 	 	 (property-in ?vessel) 
 	 	 	(not (= ?elite ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-whisk ?elite ?vessel) 1) 
 	 	(executed-whisk ?elite ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?orchid1 - orchid ?orchid2 - orchid)
 	 	;:saliency (stir-saliency ?orchid1 ?orchid2)
 	 	:precondition (and (<= (number-executedDObIOb-stir ?orchid1 ?orchid2) 5) 
 	 	 	 (property-in ?orchid1) 
 	 	 	(not (= ?orchid1 ?orchid2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-stir ?orchid1 ?orchid2) 1) 
 	 	(executed-stir ?orchid1 ?orchid2) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?compound1 - compound ?compound2 - compound)
 	 	;:saliency (stir-saliency ?compound1 ?compound2)
 	 	:precondition (and (<= (number-executedDObIOb-stir ?compound1 ?compound2) 5) 
 	 	 	 (property-in ?compound1) 
 	 	 	(not (= ?compound1 ?compound2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-stir ?compound1 ?compound2) 1) 
 	 	(executed-stir ?compound1 ?compound2) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?foodstuff1 - foodstuff ?foodstuff2 - foodstuff)
 	 	;:saliency (stir-saliency ?foodstuff1 ?foodstuff2)
 	 	:precondition (and (<= (number-executedDObIOb-stir ?foodstuff1 ?foodstuff2) 5) 
 	 	 	 (property-in ?foodstuff1) 
 	 	 	(not (= ?foodstuff1 ?foodstuff2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-stir ?foodstuff1 ?foodstuff2) 1) 
 	 	(executed-stir ?foodstuff1 ?foodstuff2) 
 	 	 	  ) 
 	)  
 
	(:action store
 	 	:irrational 
 	 	:parameters (?electric-refrigerator1 - electric-refrigerator ?electric-refrigerator2 - electric-refrigerator)
 	 	;:saliency (store-saliency ?electric-refrigerator1 ?electric-refrigerator2)
 	 	:precondition (and (<= (number-executedDObIOb-store ?electric-refrigerator1 ?electric-refrigerator2) 5) 
 	 	 	 (property-in ?electric-refrigerator1) 
 	 	 	(not (= ?electric-refrigerator1 ?electric-refrigerator2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-store ?electric-refrigerator1 ?electric-refrigerator2) 1) 
 	 	(executed-store ?electric-refrigerator1 ?electric-refrigerator2) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?device1 - device ?device2 - device)
 	 	;:saliency (combine-saliency ?device1 ?device2)
 	 	:precondition (and (<= (number-executedDObIOb-combine ?device1 ?device2) 5) 
 	 	 	 (property-in ?device1) 
 	 	 	(not (= ?device1 ?device2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-combine ?device1 ?device2) 1) 
 	 	(executed-combine ?device1 ?device2) 
 	 	 	  ) 
 	)  
 
	(:action pulse
 	 	:irrational 
 	 	:parameters (?potato - potato)
 	 	;:saliency (pulse-saliency ?potato)
 	 	:precondition (and (<= (number-executedIOb-pulse ?potato) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-pulse ?potato) 1) 
 	 	(executed-pulse ?potato) 
 	 	 	  ) 
 	)  
 
	(:action prepare
 	 	:irrational 
 	 	:parameters (?receptacle - receptacle)
 	 	;:saliency (prepare-saliency ?receptacle)
 	 	:precondition (and (<= (number-executedIOb-prepare ?receptacle) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-chips) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-prepare ?receptacle) 1) 
 	 	(executed-prepare ?receptacle) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?ingredient - ingredient)
 	 	;:saliency (whisk-saliency ?ingredient)
 	 	:precondition (and (<= (number-executedIOb-whisk ?ingredient) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?ingredient) 1) 
 	 	(executed-whisk ?ingredient) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?compound - compound)
 	 	;:saliency (whisk-saliency ?compound)
 	 	:precondition (and (<= (number-executedIOb-whisk ?compound) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?compound) 1) 
 	 	(executed-whisk ?compound) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?sweetening - sweetening)
 	 	;:saliency (whisk-saliency ?sweetening)
 	 	:precondition (and (<= (number-executedIOb-whisk ?sweetening) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?sweetening) 1) 
 	 	(executed-whisk ?sweetening) 
 	 	 	  ) 
 	)  
 
	(:action set
 	 	:irrational 
 	 	:parameters (?vessel - vessel)
 	 	;:saliency (set-saliency ?vessel)
 	 	:precondition (and (<= (number-executedIOb-set ?vessel) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-set ?vessel) 1) 
 	 	(executed-set ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action fill
 	 	:irrational 
 	 	:parameters (?binary-compound - binary-compound)
 	 	;:saliency (fill-saliency ?binary-compound)
 	 	:precondition (and (<= (number-executedIOb-fill ?binary-compound) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-fill ?binary-compound) 1) 
 	 	(executed-fill ?binary-compound) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?dish - dish)
 	 	;:saliency (combine-saliency ?dish)
 	 	:precondition (and (<= (number-executedIOb-combine ?dish) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-combine ?dish) 1) 
 	 	(executed-combine ?dish) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?elite - elite)
 	 	;:saliency (combine-saliency ?elite)
 	 	:precondition (and (<= (number-executedIOb-combine ?elite) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-combine ?elite) 1) 
 	 	(executed-combine ?elite) 
 	 	 	  ) 
 	)  
 
	(:action fold
 	 	:irrational 
 	 	:parameters (?component - component)
 	 	;:saliency (fold-saliency ?component)
 	 	:precondition (and (<= (number-executedIOb-fold ?component) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-fold ?component) 1) 
 	 	(executed-fold ?component) 
 	 	 	  ) 
 	)  
 
	(:action freeze
 	 	:irrational 
 	 	:parameters (?elite - elite)
 	 	;:saliency (freeze-saliency ?elite)
 	 	:precondition (and (<= (number-executedIOb-freeze ?elite) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-freeze ?elite) 1) 
 	 	(executed-freeze ?elite) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?orchid - orchid)
 	 	;:saliency (stir-saliency ?orchid)
 	 	:precondition (and (<= (number-executedIOb-stir ?orchid) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-stir ?orchid) 1) 
 	 	(executed-stir ?orchid) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?compound - compound)
 	 	;:saliency (stir-saliency ?compound)
 	 	:precondition (and (<= (number-executedIOb-stir ?compound) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-stir ?compound) 1) 
 	 	(executed-stir ?compound) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff)
 	 	;:saliency (stir-saliency ?foodstuff)
 	 	:precondition (and (<= (number-executedIOb-stir ?foodstuff) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-stir ?foodstuff) 1) 
 	 	(executed-stir ?foodstuff) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?beverage - beverage)
 	 	;:saliency (stir-saliency ?beverage)
 	 	:precondition (and (<= (number-executedIOb-stir ?beverage) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-stir ?beverage) 1) 
 	 	(executed-stir ?beverage) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?elite - elite)
 	 	;:saliency (stir-saliency ?elite)
 	 	:precondition (and (<= (number-executedIOb-stir ?elite) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-stir ?elite) 1) 
 	 	(executed-stir ?elite) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
