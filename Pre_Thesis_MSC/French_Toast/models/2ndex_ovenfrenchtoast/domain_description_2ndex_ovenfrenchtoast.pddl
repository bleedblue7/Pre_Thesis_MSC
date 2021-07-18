(define (domain 2ndex_ovenfrenchtoast) 
 
(:types 
food - matter
bark - whole
flavorer - food
spread - flavorer
written-record - abstraction
kitchen-appliance - artifact
cooking-utensil - artifact
compound - substance
region - object
degree - abstraction
sweetening - flavorer
artifact - whole
abstraction - entity
food - substance
substance - matter
whole - object
object - physical-entity
baked-goods - food
matter - physical-entity
physical-entity - entity
for - prepositions
in - prepositions
into - prepositions
npmod - prepositions
of - prepositions
over - prepositions
to - prepositions
) 
 
(:constants 
c - degree
sugar - sweetening
side - region
salt - compound
rind - material
pan - cooking-utensil
oven - kitchen-appliance
mixture - substance
minutes - written-record
margarine - spread
juice - foodstuff
eggs - foodstuff
cinnamon - bark
bread - baked-goods
minutes - for
pan - in
mixture - into
minutes - npmod
bread - of
margarine - over
c - to
) 
 
(:functions 
 	 (number-executed-turn) - (number 10) 
 	(number-executed-serve) - (number 10) 
 	(number-executed-mix) - (number 10) 
 	(number-executedDObIOb-preheat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-melt ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-sprinkle ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-dip ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-bake ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-more ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-bake ?o - object) - (number 5) 
 	) 
 
 	(:action turn
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-turn) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-turn) 
 	 	 	(increase (number-executed-turn) 1) 
 	 	 	  ) 
 	)  
 
	(:action serve
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-serve) 10) 
 	 	 	(executed-turn) 
 	 	 	
 ) 
 	 	:effect (and (executed-serve) 
 	 	 	(increase (number-executed-serve) 1) 
 	 	 	  ) 
 	)  
 
	(:action mix
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-mix) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-mix) 
 	 	 	(increase (number-executed-mix) 1) 
 	 	 	  ) 
 	)  
 
	(:action preheat
 	 	:irrational 
 	 	:parameters (?kitchen-appliance - kitchen-appliance ?degree - degree)
 	 	;:saliency (preheat-saliency ?kitchen-appliance ?degree)
 	 	:precondition (and (<= (number-executedDObIOb-preheat ?kitchen-appliance ?degree) 5) 
 	 	 	 (property-to ?degree) 
 	 	 	(not (= ?kitchen-appliance ?degree))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-preheat ?kitchen-appliance ?degree) 1) 
 	 	(executed-preheat ?kitchen-appliance ?degree) 
 	 	 	  ) 
 	)  
 
	(:action melt
 	 	:irrational 
 	 	:parameters (?spread - spread ?cooking-utensil - cooking-utensil)
 	 	;:saliency (melt-saliency ?spread ?cooking-utensil)
 	 	:precondition (and (<= (number-executedDObIOb-melt ?spread ?cooking-utensil) 5) 
 	 	 	 (property-baking ?cooking-utensil) 
 	 	 	(property-in ?cooking-utensil) 
 	 	 	(not (= ?spread ?cooking-utensil))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-melt ?spread ?cooking-utensil) 1) 
 	 	(executed-melt ?spread ?cooking-utensil) 
 	 	 	  ) 
 	)  
 
	(:action sprinkle
 	 	:irrational 
 	 	:parameters (?sweetening - sweetening ?spread - spread)
 	 	;:saliency (sprinkle-saliency ?sweetening ?spread)
 	 	:precondition (and (<= (number-executedDObIOb-sprinkle ?sweetening ?spread) 5) 
 	 	 	 (property-over ?spread) 
 	 	 	(not (= ?sweetening ?spread))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-sprinkle ?sweetening ?spread) 1) 
 	 	(executed-sprinkle ?sweetening ?spread) 
 	 	 	  ) 
 	)  
 
	(:action sprinkle
 	 	:irrational 
 	 	:parameters (?bark - bark ?spread - spread)
 	 	;:saliency (sprinkle-saliency ?bark ?spread)
 	 	:precondition (and (<= (number-executedDObIOb-sprinkle ?bark ?spread) 5) 
 	 	 	 (property-over ?spread) 
 	 	 	(not (= ?bark ?spread))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-sprinkle ?bark ?spread) 1) 
 	 	(executed-sprinkle ?bark ?spread) 
 	 	 	  ) 
 	)  
 
	(:action dip
 	 	:irrational 
 	 	:parameters (?region - region ?substance - substance)
 	 	;:saliency (dip-saliency ?region ?substance)
 	 	:precondition (and (<= (number-executedDObIOb-dip ?region ?substance) 5) 
 	 	 	 (property-into ?substance) 
 	 	 	(not (= ?region ?substance))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-dip ?region ?substance) 1) 
 	 	(executed-dip ?region ?substance) 
 	 	 	  ) 
 	)  
 
	(:action dip
 	 	:irrational 
 	 	:parameters (?region - region ?baked-goods - baked-goods)
 	 	;:saliency (dip-saliency ?region ?baked-goods)
 	 	:precondition (and (<= (number-executedDObIOb-dip ?region ?baked-goods) 5) 
 	 	 	 (property-of ?baked-goods) 
 	 	 	(not (= ?region ?baked-goods))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-dip ?region ?baked-goods) 1) 
 	 	(executed-dip ?region ?baked-goods) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?cooking-utensil1 - cooking-utensil ?cooking-utensil2 - cooking-utensil)
 	 	;:saliency (place-saliency ?cooking-utensil1 ?cooking-utensil2)
 	 	:precondition (and (<= (number-executedDObIOb-place ?cooking-utensil1 ?cooking-utensil2) 5) 
 	 	 	 (property-prepared ?cooking-utensil1) 
 	 	 	(property-in ?cooking-utensil1) 
 	 	 	(not (= ?cooking-utensil1 ?cooking-utensil2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?cooking-utensil1 ?cooking-utensil2) 1) 
 	 	(executed-place ?cooking-utensil1 ?cooking-utensil2) 
 	 	 	  ) 
 	)  
 
	(:action bake
 	 	:irrational 
 	 	:parameters (?written-record1 - written-record ?written-record2 - written-record)
 	 	;:saliency (bake-saliency ?written-record1 ?written-record2)
 	 	:precondition (and (<= (number-executedDObIOb-bake ?written-record1 ?written-record2) 5) 
 	 	 	 (property-for ?written-record1) 
 	 	 	(not (= ?written-record1 ?written-record2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-bake ?written-record1 ?written-record2) 1) 
 	 	(executed-bake ?written-record1 ?written-record2) 
 	 	 	  ) 
 	)  
 
	(:action more
 	 	:irrational 
 	 	:parameters (?written-record1 - written-record ?written-record2 - written-record)
 	 	;:saliency (more-saliency ?written-record1 ?written-record2)
 	 	:precondition (and (<= (number-executedDObIOb-more ?written-record1 ?written-record2) 5) 
 	 	 	 (property-npmod ?written-record1) 
 	 	 	(not (= ?written-record1 ?written-record2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-more ?written-record1 ?written-record2) 1) 
 	 	(executed-more ?written-record1 ?written-record2) 
 	 	 	  ) 
 	)  
 
	(:action bake
 	 	:irrational 
 	 	:parameters (?written-record - written-record)
 	 	;:saliency (bake-saliency ?written-record)
 	 	:precondition (and (<= (number-executedIOb-bake ?written-record) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-bake ?written-record) 1) 
 	 	(executed-bake ?written-record) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
