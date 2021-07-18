(define (domain 2ndex_BananaFrenchtoast_3) 
 
(:types 
whole - physical-entity
vascular-plant - living-thing
vessel - instrumentality
food - matter
dairy-product - food
covering - whole
overgarment - covering
ovum - living-thing
energy - physical-entity
spice-tree - vascular-plant
kitchen-appliance - artifact
wood - substance
snack-food - food
pan - instrumentality
share - entity
orchid - vascular-plant
covering - artifact
bark - covering
food - substance
substance - matter
baked-goods - food
matter - physical-entity
instrumentality - artifact
artifact - whole
herb - vascular-plant
living-thing - whole
physical-entity - entity
ambiguous - entity
among - prepositions
as - prepositions
in - prepositions
into - prepositions
on - prepositions
to - prepositions
with - prepositions
) 
 
(:constants 
vanilla - orchid
slices - share
skillet - pan
sandwiches - snack-food
pecans - wood
oven - kitchen-appliance
nutmeg - spice-tree
mixture - substance
milk - dairy-product
medium - instrumentality
heat - energy
eggs - foodstuff
egg - ovum
crispy - ambiguous
cornflakes - ambiguous
coating - covering
coat - overgarment
cinnamon - bark
butter - dairy-product
bread - baked-goods
bowl - vessel
banana - herb
bread - among
crispy - as
mixture - in
skillet - in
mixture - into
heat - on
skillet - to
coat - to
bread - with
) 
 
(:functions 
 	 (number-executed-slices) - (number 10) 
 	(number-executed-set) - (number 10) 
 	(number-executed-serve) - (number 10) 
 	(number-executedDObIOb-divide ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-dip ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-melt ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-put ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-add ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-dredge ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-press ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cook ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-combine ?o - object) - (number 5) 
 	(number-executedIOb-make ?o - object) - (number 5) 
 	(number-executedIOb-take ?o - object) - (number 5) 
 	(number-executedIOb-whisk ?o - object) - (number 5) 
 	(number-executedIOb-top ?o - object) - (number 5) 
 	) 
 
 	(:action slices
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-slices) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-slices) 
 	 	 	(increase (number-executed-slices) 1) 
 	 	 	  ) 
 	)  
 
	(:action set
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-set) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-set) 
 	 	 	(increase (number-executed-set) 1) 
 	 	 	  ) 
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
 
	(:action divide
 	 	:irrational 
 	 	:parameters (?share - share ?baked-goods - baked-goods)
 	 	;:saliency (divide-saliency ?share ?baked-goods)
 	 	:precondition (and (<= (number-executedDObIOb-divide ?share ?baked-goods) 5) 
 	 	 	 (property-remaining ?baked-goods) 
 	 	 	(property-among ?baked-goods) 
 	 	 	(property-with ?baked-goods) 
 	 	 	(not (= ?share ?baked-goods))
	 	 	 (not (finished)) 
 	 	 	(executed-set) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-divide ?share ?baked-goods) 1) 
 	 	(executed-divide ?share ?baked-goods) 
 	 	 	  ) 
 	)  
 
	(:action dip
 	 	:irrational 
 	 	:parameters (?snack-food - snack-food ?substance - substance)
 	 	;:saliency (dip-saliency ?snack-food ?substance)
 	 	:precondition (and (<= (number-executedDObIOb-dip ?snack-food ?substance) 5) 
 	 	 	 (property-into ?substance) 
 	 	 	(not (= ?snack-food ?substance))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-dip ?snack-food ?substance) 1) 
 	 	(executed-dip ?snack-food ?substance) 
 	 	 	  ) 
 	)  
 
	(:action melt
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product ?pan - pan)
 	 	;:saliency (melt-saliency ?dairy-product ?pan)
 	 	:precondition (and (<= (number-executedDObIOb-melt ?dairy-product ?pan) 5) 
 	 	 	 (property-large ?pan) 
 	 	 	(property-in ?pan) 
 	 	 	(not (= ?dairy-product ?pan))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-melt ?dairy-product ?pan) 1) 
 	 	(executed-melt ?dairy-product ?pan) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?kitchen-appliance - kitchen-appliance ?energy - energy)
 	 	;:saliency (put-saliency ?kitchen-appliance ?energy)
 	 	:precondition (and (<= (number-executedDObIOb-put ?kitchen-appliance ?energy) 5) 
 	 	 	 (property-on ?energy) 
 	 	 	(not (= ?kitchen-appliance ?energy))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?kitchen-appliance ?energy) 1) 
 	 	(executed-put ?kitchen-appliance ?energy) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?snack-food - snack-food ?pan - pan)
 	 	;:saliency (add-saliency ?snack-food ?pan)
 	 	:precondition (and (<= (number-executedDObIOb-add ?snack-food ?pan) 5) 
 	 	 	 (property-to ?pan) 
 	 	 	(not (= ?snack-food ?pan))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?snack-food ?pan) 1) 
 	 	(executed-add ?snack-food ?pan) 
 	 	 	  ) 
 	)  
 
	(:action dredge
 	 	:irrational 
 	 	:parameters (?substance1 - substance ?substance2 - substance)
 	 	;:saliency (dredge-saliency ?substance1 ?substance2)
 	 	:precondition (and (<= (number-executedDObIOb-dredge ?substance1 ?substance2) 5) 
 	 	 	 (property-in ?substance1) 
 	 	 	(not (= ?substance1 ?substance2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-dredge ?substance1 ?substance2) 1) 
 	 	(executed-dredge ?substance1 ?substance2) 
 	 	 	  ) 
 	)  
 
	(:action press
 	 	:irrational 
 	 	:parameters (?overgarment1 - overgarment ?overgarment2 - overgarment)
 	 	;:saliency (press-saliency ?overgarment1 ?overgarment2)
 	 	:precondition (and (<= (number-executedDObIOb-press ?overgarment1 ?overgarment2) 5) 
 	 	 	 (property-to ?overgarment1) 
 	 	 	(not (= ?overgarment1 ?overgarment2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-press ?overgarment1 ?overgarment2) 1) 
 	 	(executed-press ?overgarment1 ?overgarment2) 
 	 	 	  ) 
 	)  
 
	(:action cook
 	 	:irrational 
 	 	:parameters (?ambiguous1 - ambiguous ?ambiguous2 - ambiguous)
 	 	;:saliency (cook-saliency ?ambiguous1 ?ambiguous2)
 	 	:precondition (and (<= (number-executedDObIOb-cook ?ambiguous1 ?ambiguous2) 5) 
 	 	 	 (property-as ?ambiguous1) 
 	 	 	(not (= ?ambiguous1 ?ambiguous2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cook ?ambiguous1 ?ambiguous2) 1) 
 	 	(executed-cook ?ambiguous1 ?ambiguous2) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous)
 	 	;:saliency (combine-saliency ?ambiguous)
 	 	:precondition (and (<= (number-executedIOb-combine ?ambiguous) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-combine ?ambiguous) 1) 
 	 	(executed-combine ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action combine
 	 	:irrational 
 	 	:parameters (?wood - wood)
 	 	;:saliency (combine-saliency ?wood)
 	 	:precondition (and (<= (number-executedIOb-combine ?wood) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-combine ?wood) 1) 
 	 	(executed-combine ?wood) 
 	 	 	  ) 
 	)  
 
	(:action make
 	 	:irrational 
 	 	:parameters (?covering - covering)
 	 	;:saliency (make-saliency ?covering)
 	 	:precondition (and (<= (number-executedIOb-make ?covering) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-make ?covering) 1) 
 	 	(executed-make ?covering) 
 	 	 	  ) 
 	)  
 
	(:action make
 	 	:irrational 
 	 	:parameters (?snack-food - snack-food)
 	 	;:saliency (make-saliency ?snack-food)
 	 	:precondition (and (<= (number-executedIOb-make ?snack-food) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-make ?snack-food) 1) 
 	 	(executed-make ?snack-food) 
 	 	 	  ) 
 	)  
 
	(:action take
 	 	:irrational 
 	 	:parameters (?vessel - vessel)
 	 	;:saliency (take-saliency ?vessel)
 	 	:precondition (and (<= (number-executedIOb-take ?vessel) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-take ?vessel) 1) 
 	 	(executed-take ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff)
 	 	;:saliency (whisk-saliency ?foodstuff)
 	 	:precondition (and (<= (number-executedIOb-whisk ?foodstuff) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?foodstuff) 1) 
 	 	(executed-whisk ?foodstuff) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product)
 	 	;:saliency (whisk-saliency ?dairy-product)
 	 	:precondition (and (<= (number-executedIOb-whisk ?dairy-product) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?dairy-product) 1) 
 	 	(executed-whisk ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?orchid - orchid)
 	 	;:saliency (whisk-saliency ?orchid)
 	 	:precondition (and (<= (number-executedIOb-whisk ?orchid) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?orchid) 1) 
 	 	(executed-whisk ?orchid) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?bark - bark)
 	 	;:saliency (whisk-saliency ?bark)
 	 	:precondition (and (<= (number-executedIOb-whisk ?bark) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?bark) 1) 
 	 	(executed-whisk ?bark) 
 	 	 	  ) 
 	)  
 
	(:action whisk
 	 	:irrational 
 	 	:parameters (?spice-tree - spice-tree)
 	 	;:saliency (whisk-saliency ?spice-tree)
 	 	:precondition (and (<= (number-executedIOb-whisk ?spice-tree) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-whisk ?spice-tree) 1) 
 	 	(executed-whisk ?spice-tree) 
 	 	 	  ) 
 	)  
 
	(:action top
 	 	:irrational 
 	 	:parameters (?baked-goods - baked-goods)
 	 	;:saliency (top-saliency ?baked-goods)
 	 	:precondition (and (<= (number-executedIOb-top ?baked-goods) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-top ?baked-goods) 1) 
 	 	(executed-top ?baked-goods) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
