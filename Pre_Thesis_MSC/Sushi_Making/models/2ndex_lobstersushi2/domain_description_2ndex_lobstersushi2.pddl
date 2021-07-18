(define (domain 2ndex_lobstersushi2) 
 
(:types 
edible-fruit - food
vessel - artifact
solid - abstraction
regular-polyhedron - solid
vascular-plant - whole
melon - vascular-plant
binary-compound - substance
part - physical-entity
extremity - part
common-fraction - abstraction
shellfish - food
dressing - food
share - abstraction
bean - whole
formalwear - artifact
engineering - abstraction
structure - artifact
herb - vascular-plant
point - location
part - object
food - substance
digit - extremity
substance - matter
boundary - extremity
extremity - region
abstraction - entity
area - region
region - location
location - object
artifact - whole
whole - object
object - physical-entity
food - solid
solid - matter
matter - physical-entity
physical-entity - entity
ambiguous - entity
across - prepositions
in - prepositions
into - prepositions
of - prepositions
to - prepositions
with - prepositions
) 
 
(:constants 
it - engineering
ways - structure
water - binary-compound
wasabi - herb
tails - formalwear
soy - bean
slices - share
sauce - condiment
roe - seafood
place - point
pieces - part
paper - material
mixture - substance
mayo - dressing
lobster - shellfish
langostine - ambiguous
kewpie - ambiguous
half - common-fraction
fingers - digit
finger - digit
fillings - material
edge - boundary
cylinder - solid
cucumber - melon
cubes - regular-polyhedron
center - area
bowl - vessel
avocado - edible-fruit
center - across
edge - across
half - in
bowl - in
place - in
cubes - into
slices - into
bowl - into
cylinder - into
pieces - into
water - of
paper - of
half - to
sauce - with
wasabi - with
water - with
fingers - with
) 
 
(:functions 
 	 (number-executed-serve) - (number 10) 
 	(number-executed-plate) - (number 10) 
 	(number-executed-mix) - (number 10) 
 	(number-executed-if) - (number 10) 
 	(number-executed-capelin) - (number 10) 
 	(number-executedDObIOb-chop ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-slice ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-fill ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-dip ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-grab ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-keep ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-roll ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cucumber ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cut ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-wwet ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-roll ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-thaw ?o - object) - (number 5) 
 	(number-executedIOb-squeeze ?o - object) - (number 5) 
 	(number-executedIOb-cut ?o - object) - (number 5) 
 	(number-executedIOb-peel ?o - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	(number-executedIOb-take ?o - object) - (number 5) 
 	(number-executedIOb-place ?o - object) - (number 5) 
 	) 
 
 	(:action serve
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-serve) 10) 
 	 	 	(executed-plate) 
 	 	 	
 ) 
 	 	:effect (and (executed-serve) 
 	 	 	(increase (number-executed-serve) 1) 
 	 	 	  ) 
 	)  
 
	(:action plate
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-plate) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-plate) 
 	 	 	(increase (number-executed-plate) 1) 
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
 
	(:action if
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-if) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-if) 
 	 	 	(increase (number-executed-if) 1) 
 	 	 	  ) 
 	)  
 
	(:action capelin
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-capelin) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-capelin) 
 	 	 	(increase (number-executed-capelin) 1) 
 	 	 	  ) 
 	)  
 
	(:action chop
 	 	:irrational 
 	 	:parameters (?formalwear - formalwear ?regular-polyhedron - regular-polyhedron)
 	 	;:saliency (chop-saliency ?formalwear ?regular-polyhedron)
 	 	:precondition (and (<= (number-executedDObIOb-chop ?formalwear ?regular-polyhedron) 5) 
 	 	 	 (property-into ?regular-polyhedron) 
 	 	 	(not (= ?formalwear ?regular-polyhedron))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-chop ?formalwear ?regular-polyhedron) 1) 
 	 	(executed-chop ?formalwear ?regular-polyhedron) 
 	 	 	  ) 
 	)  
 
	(:action slice
 	 	:irrational 
 	 	:parameters (?melon - melon ?common-fraction - common-fraction)
 	 	;:saliency (slice-saliency ?melon ?common-fraction)
 	 	:precondition (and (<= (number-executedDObIOb-slice ?melon ?common-fraction) 5) 
 	 	 	 (property-to ?common-fraction) 
 	 	 	(not (= ?melon ?common-fraction))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-slice ?melon ?common-fraction) 1) 
 	 	(executed-slice ?melon ?common-fraction) 
 	 	 	  ) 
 	)  
 
	(:action fill
 	 	:irrational 
 	 	:parameters (?vessel - vessel ?binary-compound - binary-compound)
 	 	;:saliency (fill-saliency ?vessel ?binary-compound)
 	 	:precondition (and (<= (number-executedDObIOb-fill ?vessel ?binary-compound) 5) 
 	 	 	 (property-small ?vessel) 
 	 	 	(property-with ?binary-compound) 
 	 	 	(not (= ?vessel ?binary-compound))
	 	 	 (not (finished)) 
 	 	 	(executed-mix) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-fill ?vessel ?binary-compound) 1) 
 	 	(executed-fill ?vessel ?binary-compound) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?substance - substance ?area - area)
 	 	;:saliency (place-saliency ?substance ?area)
 	 	:precondition (and (<= (number-executedDObIOb-place ?substance ?area) 5) 
 	 	 	 (property-across ?area) 
 	 	 	(not (= ?substance ?area))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?substance ?area) 1) 
 	 	(executed-place ?substance ?area) 
 	 	 	  ) 
 	)  
 
	(:action dip
 	 	:irrational 
 	 	:parameters (?digit - digit ?vessel - vessel)
 	 	;:saliency (dip-saliency ?digit ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-dip ?digit ?vessel) 5) 
 	 	 	 (property-small ?vessel) 
 	 	 	(property-in ?vessel) 
 	 	 	(not (= ?digit ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-dip ?digit ?vessel) 1) 
 	 	(executed-dip ?digit ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action grab
 	 	:irrational 
 	 	:parameters (?boundary - boundary ?material - material)
 	 	;:saliency (grab-saliency ?boundary ?material)
 	 	:precondition (and (<= (number-executedDObIOb-grab ?boundary ?material) 5) 
 	 	 	 (property-closest ?material) 
 	 	 	(property-of ?material) 
 	 	 	(not (= ?boundary ?material))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-grab ?boundary ?material) 1) 
 	 	(executed-grab ?boundary ?material) 
 	 	 	  ) 
 	)  
 
	(:action keep
 	 	:irrational 
 	 	:parameters (?material - material ?point - point)
 	 	;:saliency (keep-saliency ?material ?point)
 	 	:precondition (and (<= (number-executedDObIOb-keep ?material ?point) 5) 
 	 	 	 (property-in ?point) 
 	 	 	(not (= ?material ?point))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-keep ?material ?point) 1) 
 	 	(executed-keep ?material ?point) 
 	 	 	  ) 
 	)  
 
	(:action roll
 	 	:irrational 
 	 	:parameters (?engineering - engineering ?solid - solid)
 	 	;:saliency (roll-saliency ?engineering ?solid)
 	 	:precondition (and (<= (number-executedDObIOb-roll ?engineering ?solid) 5) 
 	 	 	 (property-tight ?solid) 
 	 	 	(property-into ?solid) 
 	 	 	(not (= ?engineering ?solid))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-roll ?engineering ?solid) 1) 
 	 	(executed-roll ?engineering ?solid) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?vessel1 - vessel ?vessel2 - vessel)
 	 	;:saliency (place-saliency ?vessel1 ?vessel2)
 	 	:precondition (and (<= (number-executedDObIOb-place ?vessel1 ?vessel2) 5) 
 	 	 	 (property-small ?vessel1) 
 	 	 	(property-mixing ?vessel1) 
 	 	 	(property-into ?vessel1) 
 	 	 	(not (= ?vessel1 ?vessel2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?vessel1 ?vessel2) 1) 
 	 	(executed-place ?vessel1 ?vessel2) 
 	 	 	  ) 
 	)  
 
	(:action cucumber
 	 	:irrational 
 	 	:parameters (?common-fraction1 - common-fraction ?common-fraction2 - common-fraction)
 	 	;:saliency (cucumber-saliency ?common-fraction1 ?common-fraction2)
 	 	:precondition (and (<= (number-executedDObIOb-cucumber ?common-fraction1 ?common-fraction2) 5) 
 	 	 	 (property-in ?common-fraction1) 
 	 	 	(not (= ?common-fraction1 ?common-fraction2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cucumber ?common-fraction1 ?common-fraction2) 1) 
 	 	(executed-cucumber ?common-fraction1 ?common-fraction2) 
 	 	 	  ) 
 	)  
 
	(:action cut
 	 	:irrational 
 	 	:parameters (?share1 - share ?share2 - share)
 	 	;:saliency (cut-saliency ?share1 ?share2)
 	 	:precondition (and (<= (number-executedDObIOb-cut ?share1 ?share2) 5) 
 	 	 	 (property-long ?share1) 
 	 	 	(property-into ?share1) 
 	 	 	(not (= ?share1 ?share2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cut ?share1 ?share2) 1) 
 	 	(executed-cut ?share1 ?share2) 
 	 	 	  ) 
 	)  
 
	(:action wwet
 	 	:irrational 
 	 	:parameters (?boundary1 - boundary ?boundary2 - boundary)
 	 	;:saliency (wwet-saliency ?boundary1 ?boundary2)
 	 	:precondition (and (<= (number-executedDObIOb-wwet ?boundary1 ?boundary2) 5) 
 	 	 	 (property-farthest ?boundary1) 
 	 	 	(property-across ?boundary1) 
 	 	 	(not (= ?boundary1 ?boundary2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-wwet ?boundary1 ?boundary2) 1) 
 	 	(executed-wwet ?boundary1 ?boundary2) 
 	 	 	  ) 
 	)  
 
	(:action roll
 	 	:irrational 
 	 	:parameters (?part1 - part ?part2 - part)
 	 	;:saliency (roll-saliency ?part1 ?part2)
 	 	:precondition (and (<= (number-executedDObIOb-roll ?part1 ?part2) 5) 
 	 	 	 (property-into ?part1) 
 	 	 	(not (= ?part1 ?part2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-roll ?part1 ?part2) 1) 
 	 	(executed-roll ?part1 ?part2) 
 	 	 	  ) 
 	)  
 
	(:action thaw
 	 	:irrational 
 	 	:parameters (?formalwear - formalwear)
 	 	;:saliency (thaw-saliency ?formalwear)
 	 	:precondition (and (<= (number-executedIOb-thaw ?formalwear) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-thaw ?formalwear) 1) 
 	 	(executed-thaw ?formalwear) 
 	 	 	  ) 
 	)  
 
	(:action squeeze
 	 	:irrational 
 	 	:parameters (?binary-compound - binary-compound)
 	 	;:saliency (squeeze-saliency ?binary-compound)
 	 	:precondition (and (<= (number-executedIOb-squeeze ?binary-compound) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-squeeze ?binary-compound) 1) 
 	 	(executed-squeeze ?binary-compound) 
 	 	 	  ) 
 	)  
 
	(:action take
 	 	:irrational 
 	 	:parameters (?common-fraction - common-fraction)
 	 	;:saliency (take-saliency ?common-fraction)
 	 	:precondition (and (<= (number-executedIOb-take ?common-fraction) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-take ?common-fraction) 1) 
 	 	(executed-take ?common-fraction) 
 	 	 	  ) 
 	)  
 
	(:action cut
 	 	:irrational 
 	 	:parameters (?structure - structure)
 	 	;:saliency (cut-saliency ?structure)
 	 	:precondition (and (<= (number-executedIOb-cut ?structure) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-cut ?structure) 1) 
 	 	(executed-cut ?structure) 
 	 	 	  ) 
 	)  
 
	(:action peel
 	 	:irrational 
 	 	:parameters (?edible-fruit - edible-fruit)
 	 	;:saliency (peel-saliency ?edible-fruit)
 	 	:precondition (and (<= (number-executedIOb-peel ?edible-fruit) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-peel ?edible-fruit) 1) 
 	 	(executed-peel ?edible-fruit) 
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
 
	(:action add
 	 	:irrational 
 	 	:parameters (?dressing - dressing)
 	 	;:saliency (add-saliency ?dressing)
 	 	:precondition (and (<= (number-executedIOb-add ?dressing) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-mix) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-add ?dressing) 1) 
 	 	(executed-add ?dressing) 
 	 	 	  ) 
 	)  
 
	(:action take
 	 	:irrational 
 	 	:parameters (?material - material)
 	 	;:saliency (take-saliency ?material)
 	 	:precondition (and (<= (number-executedIOb-take ?material) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-take ?material) 1) 
 	 	(executed-take ?material) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?engineering - engineering)
 	 	;:saliency (place-saliency ?engineering)
 	 	:precondition (and (<= (number-executedIOb-place ?engineering) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-place ?engineering) 1) 
 	 	(executed-place ?engineering) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?melon - melon)
 	 	;:saliency (place-saliency ?melon)
 	 	:precondition (and (<= (number-executedIOb-place ?melon) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-place ?melon) 1) 
 	 	(executed-place ?melon) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?edible-fruit - edible-fruit)
 	 	;:saliency (place-saliency ?edible-fruit)
 	 	:precondition (and (<= (number-executedIOb-place ?edible-fruit) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-place ?edible-fruit) 1) 
 	 	(executed-place ?edible-fruit) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
