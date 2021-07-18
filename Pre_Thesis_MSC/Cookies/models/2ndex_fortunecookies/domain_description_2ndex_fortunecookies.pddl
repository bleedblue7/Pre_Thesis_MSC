(define (domain 2ndex_fortunecookies) 
 
(:types 
ballplayer - organism
vessel - instrumentality
food - matter
cake - food
macromolecule - thing
starch - macromolecule
crockery - artifact
region - object
ovum - living-thing
solution - substance
sweetening - food
phenomenon - physical-entity
definite-quantity - abstraction
common-fraction - definite-quantity
extremity - thing
written-record - abstraction
kitchen-appliance - artifact
binary-compound - substance
expanse - abstraction
turner - instrumentality
orchid - organism
degree - unit-of-measurement
produce - food
lipid - macromolecule
area - region
linear-unit - unit-of-measurement
unit-of-measurement - definite-quantity
abstraction - entity
food - substance
substance - matter
boundary - extremity
extremity - region
thing - physical-entity
matter - physical-entity
instrumentality - artifact
artifact - whole
organism - living-thing
living-thing - whole
whole - object
object - physical-entity
physical-entity - entity
ambiguous - entity
for - prepositions
in - prepositions
npmod - prepositions
of - prepositions
onto - prepositions
poss - prepositions
to - prepositions
with - prepositions
) 
 
(:constants 
them - ambiguous
your - ambiguous
f - degree
water - binary-compound
vegetable - produce
vanilla - orchid
sugar - sweetening
strips - part
spatula - turner
sheet - expanse
salt - compound
oven - kitchen-appliance
oil - lipid
mixture - substance
minutes - written-record
middle - area
inches - linear-unit
hand - extremity
half - common-fraction
fortune - phenomenon
flour - foodstuff
extract - solution
egg - ovum
edges - boundary
cup - crockery
cornstarch - starch
cookies - cake
cookie - cake
bowl - vessel
batter - ballplayer
minutes - for
hand - in
half - in
cup - in
middle - in
bowl - in
inches - npmod
cookie - of
sheet - onto
your - poss
egg - to
f - to
cookies - with
spatula - with
) 
 
(:functions 
 	 (number-executed-finished) - (number 10) 
 	(number-executed-extract) - (number 10) 
 	(number-executed-beat) - (number 10) 
 	(number-executedDObIOb-preheat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-put ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-add ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-remove ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-flip ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-fold ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-white ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-sugar ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-salt ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-bake ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-continue ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-measure ?o - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	(number-executedIOb-stir ?o - object) - (number 5) 
 	(number-executedIOb-space ?o - object) - (number 5) 
 	(number-executedIOb-pull ?o - object) - (number 5) 
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
 
	(:action extract
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-extract) 10) 
 	 	 	(executed-beat) 
 	 	 	
 ) 
 	 	:effect (and (executed-extract) 
 	 	 	(increase (number-executed-extract) 1) 
 	 	 	  ) 
 	)  
 
	(:action beat
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-beat) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-beat) 
 	 	 	(increase (number-executed-beat) 1) 
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
 
	(:action put
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff ?vessel - vessel)
 	 	;:saliency (put-saliency ?foodstuff ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-put ?foodstuff ?vessel) 5) 
 	 	 	 (property-in ?vessel) 
 	 	 	(not (= ?foodstuff ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?foodstuff ?vessel) 1) 
 	 	(executed-put ?foodstuff ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?starch - starch ?vessel - vessel)
 	 	;:saliency (put-saliency ?starch ?vessel)
 	 	:precondition (and (<= (number-executedDObIOb-put ?starch ?vessel) 5) 
 	 	 	 (property-in ?vessel) 
 	 	 	(not (= ?starch ?vessel))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?starch ?vessel) 1) 
 	 	(executed-put ?starch ?vessel) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?substance - substance ?ovum - ovum)
 	 	;:saliency (add-saliency ?substance ?ovum)
 	 	:precondition (and (<= (number-executedDObIOb-add ?substance ?ovum) 5) 
 	 	 	 (property-to ?ovum) 
 	 	 	(not (= ?substance ?ovum))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-add ?substance ?ovum) 1) 
 	 	(executed-add ?substance ?ovum) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?ballplayer - ballplayer ?expanse - expanse)
 	 	;:saliency (place-saliency ?ballplayer ?expanse)
 	 	:precondition (and (<= (number-executedDObIOb-place ?ballplayer ?expanse) 5) 
 	 	 	 (property-onto ?expanse) 
 	 	 	(not (= ?ballplayer ?expanse))
	 	 	 (not (finished)) 
 	 	 	(executed-stir ?ballplayer) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?ballplayer ?expanse) 1) 
 	 	(executed-place ?ballplayer ?expanse) 
 	 	 	  ) 
 	)  
 
	(:action remove
 	 	:irrational 
 	 	:parameters (?cake - cake ?turner - turner)
 	 	;:saliency (remove-saliency ?cake ?turner)
 	 	:precondition (and (<= (number-executedDObIOb-remove ?cake ?turner) 5) 
 	 	 	 (property-with ?turner) 
 	 	 	(not (= ?cake ?turner))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-remove ?cake ?turner) 1) 
 	 	(executed-remove ?cake ?turner) 
 	 	 	  ) 
 	)  
 
	(:action flip
 	 	:irrational 
 	 	:parameters (?cake - cake ?extremity - extremity)
 	 	;:saliency (flip-saliency ?cake ?extremity)
 	 	:precondition (and (<= (number-executedDObIOb-flip ?cake ?extremity) 5) 
 	 	 	 (property-in ?extremity) 
 	 	 	(not (= ?cake ?extremity))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-flip ?cake ?extremity) 1) 
 	 	(executed-flip ?cake ?extremity) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?phenomenon - phenomenon ?area - area)
 	 	;:saliency (place-saliency ?phenomenon ?area)
 	 	:precondition (and (<= (number-executedDObIOb-place ?phenomenon ?area) 5) 
 	 	 	 (property-in ?area) 
 	 	 	(not (= ?phenomenon ?area))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?phenomenon ?area) 1) 
 	 	(executed-place ?phenomenon ?area) 
 	 	 	  ) 
 	)  
 
	(:action fold
 	 	:irrational 
 	 	:parameters (?cake - cake ?common-fraction - common-fraction)
 	 	;:saliency (fold-saliency ?cake ?common-fraction)
 	 	:precondition (and (<= (number-executedDObIOb-fold ?cake ?common-fraction) 5) 
 	 	 	 (property-in ?common-fraction) 
 	 	 	(not (= ?cake ?common-fraction))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-fold ?cake ?common-fraction) 1) 
 	 	(executed-fold ?cake ?common-fraction) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?cake - cake ?crockery - crockery)
 	 	;:saliency (place-saliency ?cake ?crockery)
 	 	:precondition (and (<= (number-executedDObIOb-place ?cake ?crockery) 5) 
 	 	 	 (property-in ?crockery) 
 	 	 	(not (= ?cake ?crockery))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?cake ?crockery) 1) 
 	 	(executed-place ?cake ?crockery) 
 	 	 	  ) 
 	)  
 
	(:action white
 	 	:irrational 
 	 	:parameters (?vessel1 - vessel ?vessel2 - vessel)
 	 	;:saliency (white-saliency ?vessel1 ?vessel2)
 	 	:precondition (and (<= (number-executedDObIOb-white ?vessel1 ?vessel2) 5) 
 	 	 	 (property-in ?vessel1) 
 	 	 	(not (= ?vessel1 ?vessel2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-white ?vessel1 ?vessel2) 1) 
 	 	(executed-white ?vessel1 ?vessel2) 
 	 	 	  ) 
 	)  
 
	(:action sugar
 	 	:irrational 
 	 	:parameters (?vessel1 - vessel ?vessel2 - vessel)
 	 	;:saliency (sugar-saliency ?vessel1 ?vessel2)
 	 	:precondition (and (<= (number-executedDObIOb-sugar ?vessel1 ?vessel2) 5) 
 	 	 	 (property-in ?vessel1) 
 	 	 	(not (= ?vessel1 ?vessel2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-sugar ?vessel1 ?vessel2) 1) 
 	 	(executed-sugar ?vessel1 ?vessel2) 
 	 	 	  ) 
 	)  
 
	(:action salt
 	 	:irrational 
 	 	:parameters (?vessel1 - vessel ?vessel2 - vessel)
 	 	;:saliency (salt-saliency ?vessel1 ?vessel2)
 	 	:precondition (and (<= (number-executedDObIOb-salt ?vessel1 ?vessel2) 5) 
 	 	 	 (property-in ?vessel1) 
 	 	 	(not (= ?vessel1 ?vessel2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-salt ?vessel1 ?vessel2) 1) 
 	 	(executed-salt ?vessel1 ?vessel2) 
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
 
	(:action continue
 	 	:irrational 
 	 	:parameters (?cake1 - cake ?cake2 - cake)
 	 	;:saliency (continue-saliency ?cake1 ?cake2)
 	 	:precondition (and (<= (number-executedDObIOb-continue ?cake1 ?cake2) 5) 
 	 	 	 (property-other ?cake1) 
 	 	 	(property-with ?cake1) 
 	 	 	(not (= ?cake1 ?cake2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-continue ?cake1 ?cake2) 1) 
 	 	(executed-continue ?cake1 ?cake2) 
 	 	 	  ) 
 	)  
 
	(:action measure
 	 	:irrational 
 	 	:parameters (?part - part)
 	 	;:saliency (measure-saliency ?part)
 	 	:precondition (and (<= (number-executedIOb-measure ?part) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-measure ?part) 1) 
 	 	(executed-measure ?part) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?solution - solution)
 	 	;:saliency (add-saliency ?solution)
 	 	:precondition (and (<= (number-executedIOb-add ?solution) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?solution) 1) 
 	 	(executed-add ?solution) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?lipid - lipid)
 	 	;:saliency (add-saliency ?lipid)
 	 	:precondition (and (<= (number-executedIOb-add ?lipid) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?lipid) 1) 
 	 	(executed-add ?lipid) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?binary-compound - binary-compound)
 	 	;:saliency (stir-saliency ?binary-compound)
 	 	:precondition (and (<= (number-executedIOb-stir ?binary-compound) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-stir ?binary-compound) 1) 
 	 	(executed-stir ?binary-compound) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff)
 	 	;:saliency (add-saliency ?foodstuff)
 	 	:precondition (and (<= (number-executedIOb-add ?foodstuff) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?foodstuff) 1) 
 	 	(executed-add ?foodstuff) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?starch - starch)
 	 	;:saliency (add-saliency ?starch)
 	 	:precondition (and (<= (number-executedIOb-add ?starch) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?starch) 1) 
 	 	(executed-add ?starch) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?sweetening - sweetening)
 	 	;:saliency (add-saliency ?sweetening)
 	 	:precondition (and (<= (number-executedIOb-add ?sweetening) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-add ?sweetening) 1) 
 	 	(executed-add ?sweetening) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?ballplayer - ballplayer)
 	 	;:saliency (stir-saliency ?ballplayer)
 	 	:precondition (and (<= (number-executedIOb-stir ?ballplayer) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-stir ?ballplayer) 1) 
 	 	(executed-stir ?ballplayer) 
 	 	 	  ) 
 	)  
 
	(:action space
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous)
 	 	;:saliency (space-saliency ?ambiguous)
 	 	:precondition (and (<= (number-executedIOb-space ?ambiguous) 5) 
 	 	 	 (property-apart) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-space ?ambiguous) 1) 
 	 	(executed-space ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action pull
 	 	:irrational 
 	 	:parameters (?boundary - boundary)
 	 	;:saliency (pull-saliency ?boundary)
 	 	:precondition (and (<= (number-executedIOb-pull ?boundary) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-pull ?boundary) 1) 
 	 	(executed-pull ?boundary) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
