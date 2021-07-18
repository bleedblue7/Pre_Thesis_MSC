(define (domain 2ndex_seafoodsushi) 
 
(:types 
share - relation
organism - object
salmonid - organism
part - physical-entity
extremity - part
act - psychological-feature
guardianship - act
parallelogram - abstraction
grain - food
food - matter
small-person - organism
region - object
dish - food
vascular-plant - organism
prickly-pear - vascular-plant
binary-compound - substance
engineering - psychological-feature
herb - vascular-plant
food - substance
substance - matter
matter - physical-entity
activity - act
part - relation
psychological-feature - abstraction
object - physical-entity
physical-entity - entity
relation - abstraction
abstraction - entity
ambiguous - entity
in - prepositions
into - prepositions
of - prepositions
on - prepositions
poss - prepositions
) 
 
(:constants 
it - engineering
your - ambiguous
water - binary-compound
wasabi - herb
tuna - prickly-pear
sushi - dish
slices - share
slice - share
side - region
shrimp - small-person
seafood - food
salmon - salmonid
rice - grain
rectangle - parallelogram
process - activity
items - part
hands - guardianship
hand - extremity
fish - aquatic-vertebrate
downwards - ambiguous
amount - assets
water - in
rectangle - in
slices - into
rice - of
slice - of
side - on
rice - on
your - poss
) 
 
(:functions 
 	 (number-executed-serve) - (number 10) 
 	(number-executed-repeat) - (number 10) 
 	(number-executed-garnish) - (number 10) 
 	(number-executedDObIOb-cut ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-dip ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-take ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-place ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-put ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-shape ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-shape ?o - object) - (number 5) 
 	(number-executedIOb-hold ?o - object) - (number 5) 
 	(number-executedIOb-press ?o - object) - (number 5) 
 	(number-executedIOb-using ?o - object) - (number 5) 
 	) 
 
 	(:action serve
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-serve) 10) 
 	 	 	(executed-garnish) 
 	 	 	
 ) 
 	 	:effect (and (executed-serve) 
 	 	 	(increase (number-executed-serve) 1) 
 	 	 	  ) 
 	)  
 
	(:action repeat
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-repeat) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-repeat) 
 	 	 	(increase (number-executed-repeat) 1) 
 	 	 	  ) 
 	)  
 
	(:action garnish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-garnish) 10) 
 	 	 	 ) 
 	 	:effect (and (executed-garnish) 
 	 	 	(increase (number-executed-garnish) 1) 
 	 	 	  ) 
 	)  
 
	(:action cut
 	 	:irrational 
 	 	:parameters (?food - food ?share - share)
 	 	;:saliency (cut-saliency ?food ?share)
 	 	:precondition (and (<= (number-executedDObIOb-cut ?food ?share) 5) 
 	 	 	 (property-small ?share) 
 	 	 	(property-into ?share) 
 	 	 	(not (= ?food ?share))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cut ?food ?share) 1) 
 	 	(executed-cut ?food ?share) 
 	 	 	  ) 
 	)  
 
	(:action dip
 	 	:irrational 
 	 	:parameters (?guardianship - guardianship ?binary-compound - binary-compound)
 	 	;:saliency (dip-saliency ?guardianship ?binary-compound)
 	 	:precondition (and (<= (number-executedDObIOb-dip ?guardianship ?binary-compound) 5) 
 	 	 	 (property-in ?binary-compound) 
 	 	 	(not (= ?guardianship ?binary-compound))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-dip ?guardianship ?binary-compound) 1) 
 	 	(executed-dip ?guardianship ?binary-compound) 
 	 	 	  ) 
 	)  
 
	(:action dip
 	 	:irrational 
 	 	:parameters (?guardianship - guardianship ?ambiguous - ambiguous)
 	 	;:saliency (dip-saliency ?guardianship ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-dip ?guardianship ?ambiguous) 5) 
 	 	 	 (property-poss ?ambiguous) 
 	 	 	(not (= ?guardianship ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-dip ?guardianship ?ambiguous) 1) 
 	 	(executed-dip ?guardianship ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action take
 	 	:irrational 
 	 	:parameters (?assets - assets ?grain - grain)
 	 	;:saliency (take-saliency ?assets ?grain)
 	 	:precondition (and (<= (number-executedDObIOb-take ?assets ?grain) 5) 
 	 	 	 (property-small ?assets) 
 	 	 	(property-of ?grain) 
 	 	 	(not (= ?assets ?grain))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-take ?assets ?grain) 1) 
 	 	(executed-take ?assets ?grain) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?herb - herb ?region - region)
 	 	;:saliency (place-saliency ?herb ?region)
 	 	:precondition (and (<= (number-executedDObIOb-place ?herb ?region) 5) 
 	 	 	 (property-on ?region) 
 	 	 	(not (= ?herb ?region))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?herb ?region) 1) 
 	 	(executed-place ?herb ?region) 
 	 	 	  ) 
 	)  
 
	(:action place
 	 	:irrational 
 	 	:parameters (?aquatic-vertebrate - aquatic-vertebrate ?grain - grain)
 	 	;:saliency (place-saliency ?aquatic-vertebrate ?grain)
 	 	:precondition (and (<= (number-executedDObIOb-place ?aquatic-vertebrate ?grain) 5) 
 	 	 	 (property-on ?grain) 
 	 	 	(not (= ?aquatic-vertebrate ?grain))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-place ?aquatic-vertebrate ?grain) 1) 
 	 	(executed-place ?aquatic-vertebrate ?grain) 
 	 	 	  ) 
 	)  
 
	(:action put
 	 	:irrational 
 	 	:parameters (?region - region ?grain - grain)
 	 	;:saliency (put-saliency ?region ?grain)
 	 	:precondition (and (<= (number-executedDObIOb-put ?region ?grain) 5) 
 	 	 	 (property-wasabi ?region) 
 	 	 	(property-on ?grain) 
 	 	 	(not (= ?region ?grain))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-put ?region ?grain) 1) 
 	 	(executed-put ?region ?grain) 
 	 	 	  ) 
 	)  
 
	(:action shape
 	 	:irrational 
 	 	:parameters (?engineering - engineering ?parallelogram - parallelogram)
 	 	;:saliency (shape-saliency ?engineering ?parallelogram)
 	 	:precondition (and (<= (number-executedDObIOb-shape ?engineering ?parallelogram) 5) 
 	 	 	 (property-rounded ?parallelogram) 
 	 	 	(property-in ?parallelogram) 
 	 	 	(not (= ?engineering ?parallelogram))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-shape ?engineering ?parallelogram) 1) 
 	 	(executed-shape ?engineering ?parallelogram) 
 	 	 	  ) 
 	)  
 
	(:action shape
 	 	:irrational 
 	 	:parameters (?part - part)
 	 	;:saliency (shape-saliency ?part)
 	 	:precondition (and (<= (number-executedIOb-shape ?part) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-shape ?part) 1) 
 	 	(executed-shape ?part) 
 	 	 	  ) 
 	)  
 
	(:action hold
 	 	:irrational 
 	 	:parameters (?extremity - extremity)
 	 	;:saliency (hold-saliency ?extremity)
 	 	:precondition (and (<= (number-executedIOb-hold ?extremity) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-hold ?extremity) 1) 
 	 	(executed-hold ?extremity) 
 	 	 	  ) 
 	)  
 
	(:action press
 	 	:irrational 
 	 	:parameters (?ambiguous - ambiguous)
 	 	;:saliency (press-saliency ?ambiguous)
 	 	:precondition (and (<= (number-executedIOb-press ?ambiguous) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-press ?ambiguous) 1) 
 	 	(executed-press ?ambiguous) 
 	 	 	  ) 
 	)  
 
	(:action using
 	 	:irrational 
 	 	:parameters (?salmonid - salmonid)
 	 	;:saliency (using-saliency ?salmonid)
 	 	:precondition (and (<= (number-executedIOb-using ?salmonid) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-using ?salmonid) 1) 
 	 	(executed-using ?salmonid) 
 	 	 	  ) 
 	)  
 
	(:action using
 	 	:irrational 
 	 	:parameters (?small-person - small-person)
 	 	;:saliency (using-saliency ?small-person)
 	 	:precondition (and (<= (number-executedIOb-using ?small-person) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-using ?small-person) 1) 
 	 	(executed-using ?small-person) 
 	 	 	  ) 
 	)  
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
