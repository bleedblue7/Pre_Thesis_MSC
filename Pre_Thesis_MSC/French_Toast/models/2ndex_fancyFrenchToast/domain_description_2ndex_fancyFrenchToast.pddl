(define (domain 2ndex_fancyFrenchToast) 
 
(:types 
vascular-plant - whole
spice-tree - vascular-plant
vessel - instrumentality
food - matter
dairy-product - food
bark - whole
energy - physical-entity
written-record - abstraction
home-appliance - artifact
difficulty - attribute
compound - substance
expanse - attribute
region - object
pan - instrumentality
cutlery - artifact
containerful - measure
orchid - vascular-plant
degree - measure
engineering - abstraction
measure - abstraction
white-goods - home-appliance
attribute - abstraction
part - object
kitchen-appliance - home-appliance
abstraction - entity
food - substance
substance - matter
baked-goods - food
matter - physical-entity
instrumentality - artifact
artifact - whole
whole - object
object - physical-entity
physical-entity - entity
ambiguous - entity
for - prepositions
in - prepositions
into - prepositions
of - prepositions
on - prepositions
poss - prepositions
to - prepositions
) 
 
(:constants 
it - engineering
them - ambiguous
your - ambiguous
f - degree
vanilla - orchid
teaspoon - containerful
spoons - cutlery
skillet - pan
side - region
sheet - expanse
salt - compound
refrigerator - white-goods
pinch - difficulty
pieces - part
oven - kitchen-appliance
mixture - substance
minutes - written-record
milk - dairy-product
medium - instrumentality
heat - energy
eggs - foodstuff
cinnamon - bark
butter - dairy-product
breads - baked-goods
bread - baked-goods
bowl - vessel
allspice - spice-tree
minutes - for
refrigerator - in
mixture - in
bowl - into
bread - of
salt - of
butter - of
vanilla - of
side - on
skillet - on
your - poss
eggs - to
f - to
sheet - to
) 
 
(:functions 
 	 (number-executed-serve) - (number 10) 
 	(number-executed-mix) - (number 10) 
 	(number-executed-make) - (number 10) 
 	(number-executed-cut) - (number 10) 
 	(number-executedDObIOb-add ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-soak ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-dip ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-melt ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-put ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-transfer ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-preheat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cook ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-pieces ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-soak ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-minutes ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	(number-executedIOb-take ?o - object) - (number 5) 
 	(number-executedIOb-put ?o - object) - (number 5) 
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
 
	(:action make
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-make) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-make) 
 	 	 	(increase (number-executed-make) 1) 
 	 	 	  ) 
 	)  
 
	(:action cut
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-cut) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-cut) 
 	 	 	(increase (number-executed-cut) 1) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff ?vessel - vessel)
 	 	;:saliency (add-saliency ?foodstuff ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-add ?foodstuff ?vessel) 5) 
 	 	 	 (property-into ?vessel) 
 	 	 	(not (= ?foodstuff ?vessel))
	 	 	 (not (finished)) 
 	 	 	(executed-cut) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?foodstuff ?vessel) 1) 
 	 	(executed-add ?foodstuff ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product ?foodstuff - foodstuff)
 	 	;:saliency (add-saliency ?dairy-product ?foodstuff)
 	 	:precondition (and (<= (number-executedDObIOb-add ?dairy-product ?foodstuff) 5) 
 	 	 	 (property-to ?foodstuff) 
 	 	 	(not (= ?dairy-product ?foodstuff))
	 	 	 (not (finished)) 
 	 	 	(executed-cut) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?dairy-product ?foodstuff) 1) 
 	 	(executed-add ?dairy-product ?foodstuff) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?containerful - containerful ?orchid - orchid)
 	 	;:saliency (add-saliency ?containerful ?orchid)
 	 	:precondition (and (<= (number-executedDObIOb-add ?containerful ?orchid) 5) 
 	 	 	 (property-of ?orchid) 
 	 	 	(not (= ?containerful ?orchid))
	 	 	 (not (finished)) 
 	 	 	(executed-cut) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?containerful ?orchid) 1) 
 	 	(executed-add ?containerful ?orchid) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?difficulty - difficulty ?compound - compound)
 	 	;:saliency (add-saliency ?difficulty ?compound)
 	 	:precondition (and (<= (number-executedDObIOb-add ?difficulty ?compound) 5) 
 	 	 	 (property-of ?compound) 
 	 	 	(not (= ?difficulty ?compound))
	 	 	 (not (finished)) 
 	 	 	(executed-cut) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?difficulty ?compound) 1) 
 	 	(executed-add ?difficulty ?compound) 
 	 	 	  ) 
 	)  
 
	(:action soak
 	 	:irrational 
 	 	:parameters (?engineering - engineering ?substance - substance)
 	 	;:saliency (soak-saliency ?engineering ?substance)
 	 	:precondition (and (<= (number-executedDObIOb-soak ?engineering ?substance) 5) 
 	 	 	 (property-in ?substance) 
 	 	 	(not (= ?engineering ?substance))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-soak ?engineering ?substance) 1) 
 	 	(executed-soak ?engineering ?substance) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?engineering - engineering ?white-goods - white-goods)
 	 	;:saliency (put-saliency ?engineering ?white-goods)
 	 	:precondition (and (<= (number-executedDObIOb-put ?engineering ?white-goods) 5) 
 	 	 	 (property-in ?white-goods) 
 	 	 	(not (= ?engineering ?white-goods))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?engineering ?white-goods) 1) 
 	 	(executed-put ?engineering ?white-goods) 
 	 	 	  ) 
 	)  
 
	(:action dip
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?substance - substance)
 	 	;:saliency (dip-saliency ?ambiguous ?substance)
 	 	:precondition (and (<= (number-executedDObIOb-dip ?ambiguous ?substance) 5) 
 	 	 	 (property-in ?substance) 
 	 	 	(not (= ?ambiguous ?substance))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-dip ?ambiguous ?substance) 1) 
 	 	(executed-dip ?ambiguous ?substance) 
 	 	 	  ) 
 	)  
 
	(:action melt
 	 	:irrational 
 	 	:parameters (?cutlery - cutlery ?dairy-product - dairy-product)
 	 	;:saliency (melt-saliency ?cutlery ?dairy-product)
 	 	:precondition (and (<= (number-executedDObIOb-melt ?cutlery ?dairy-product) 5) 
 	 	 	 (property-whole ?dairy-product) 
 	 	 	(property-of ?dairy-product) 
 	 	 	(not (= ?cutlery ?dairy-product))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-melt ?cutlery ?dairy-product) 1) 
 	 	(executed-melt ?cutlery ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods ?pan - pan)
 	 	;:saliency (put-saliency ?baked-goods ?pan)
 	 	:precondition (and (<= (number-executedDObIOb-put ?baked-goods ?pan) 5) 
 	 	 	 (property-on ?pan) 
 	 	 	(not (= ?baked-goods ?pan))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?baked-goods ?pan) 1) 
 	 	(executed-put ?baked-goods ?pan) 
 	 	 	  ) 
 	)  
 
	(:action transfer
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous ?expanse - expanse)
 	 	;:saliency (transfer-saliency ?ambiguous ?expanse)
 	 	:precondition (and (<= (number-executedDObIOb-transfer ?ambiguous ?expanse) 5) 
 	 	 	 (property-baking ?expanse) 
 	 	 	(property-to ?expanse) 
 	 	 	(not (= ?ambiguous ?expanse))
	 	 	 (not (finished)) 
 	 	 	(executed-make) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-transfer ?ambiguous ?expanse) 1) 
 	 	(executed-transfer ?ambiguous ?expanse) 
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
 
	(:action cook
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods ?written-record - written-record)
 	 	;:saliency (cook-saliency ?baked-goods ?written-record)
 	 	:precondition (and (<= (number-executedDObIOb-cook ?baked-goods ?written-record) 5) 
 	 	 	 (property-for ?written-record) 
 	 	 	(not (= ?baked-goods ?written-record))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cook ?baked-goods ?written-record) 1) 
 	 	(executed-cook ?baked-goods ?written-record) 
 	 	 	  ) 
 	)  
 
	(:action pieces
 	 	:irrational 
 	 	:parameters (?baked-goods1 - baked-goods ?baked-goods2 - baked-goods)
 	 	;:saliency (pieces-saliency ?baked-goods1 ?baked-goods2)
 	 	:precondition (and (<= (number-executedDObIOb-pieces ?baked-goods1 ?baked-goods2) 5) 
 	 	 	 (property-thick) 
 	 	 	(property-of ?baked-goods1) 
 	 	 	(not (= ?baked-goods1 ?baked-goods2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-pieces ?baked-goods1 ?baked-goods2) 1) 
 	 	(executed-pieces ?baked-goods1 ?baked-goods2) 
 	 	 	  ) 
 	)  
 
	(:action soak
 	 	:irrational 
 	 	:parameters (?written-record1 - written-record ?written-record2 - written-record)
 	 	;:saliency (soak-saliency ?written-record1 ?written-record2)
 	 	:precondition (and (<= (number-executedDObIOb-soak ?written-record1 ?written-record2) 5) 
 	 	 	 (property-for ?written-record1) 
 	 	 	(not (= ?written-record1 ?written-record2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-soak ?written-record1 ?written-record2) 1) 
 	 	(executed-soak ?written-record1 ?written-record2) 
 	 	 	  ) 
 	)  
 
	(:action minutes
 	 	:irrational 
 	 	:parameters (?region1 - region ?region2 - region)
 	 	;:saliency (minutes-saliency ?region1 ?region2)
 	 	:precondition (and (<= (number-executedDObIOb-minutes ?region1 ?region2) 5) 
 	 	 	 (property-on ?region1) 
 	 	 	(not (= ?region1 ?region2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-minutes ?region1 ?region2) 1) 
 	 	(executed-minutes ?region1 ?region2) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?spice-tree - spice-tree)
 	 	;:saliency (add-saliency ?spice-tree)
 	 	:precondition (and (<= (number-executedIOb-add ?spice-tree) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-cut) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-add ?spice-tree) 1) 
 	 	(executed-add ?spice-tree) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?bark - bark)
 	 	;:saliency (add-saliency ?bark)
 	 	:precondition (and (<= (number-executedIOb-add ?bark) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-cut) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-add ?bark) 1) 
 	 	(executed-add ?bark) 
 	 	 	  ) 
 	)  
 
	(:action take
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods)
 	 	;:saliency (take-saliency ?baked-goods)
 	 	:precondition (and (<= (number-executedIOb-take ?baked-goods) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-mix) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-take ?baked-goods) 1) 
 	 	(executed-take ?baked-goods) 
 	 	 	  ) 
 	)  
 
	(:action take
 	 	:irrational 
 	 	:parameters (?pan - pan)
 	 	;:saliency (take-saliency ?pan)
 	 	:precondition (and (<= (number-executedIOb-take ?pan) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-mix) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-take ?pan) 1) 
 	 	(executed-take ?pan) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?energy - energy)
 	 	;:saliency (put-saliency ?energy)
 	 	:precondition (and (<= (number-executedIOb-put ?energy) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-put ?energy) 1) 
 	 	(executed-put ?energy) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
