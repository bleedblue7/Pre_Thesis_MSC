(define (domain 2ndex_snowballcookies) 
 
(:types 
food - matter
potato - food
cake - food
whole - physical-entity
ovum - living-thing
kitchen-appliance - whole
wood - material
compound - material
devotion - abstraction
sweetening - foodstuff
orchid - living-thing
degree - abstraction
abstraction - entity
material - substance
living-thing - whole
beverage - food
dairy-product - foodstuff
foodstuff - food
food - substance
substance - matter
matter - physical-entity
physical-entity - entity
ambiguous - entity
in - prepositions
on - prepositions
poss - prepositions
to - prepositions
) 
 
(:constants 
your - ambiguous
f - degree
work - activity
vanilla - orchid
sugar - sweetening
stations - devotion
salt - compound
pecans - wood
oven - kitchen-appliance
flour - foodstuff
egg - ovum
cookies - cake
chocolate - beverage
chips - potato
butter - dairy-product
sugar - in
egg - in
vanilla - in
oven - on
your - poss
f - to
) 
 
(:functions 
 	 (number-executed-roll) - (number 10) 
 	(number-executed-finished) - (number 10) 
 	(number-executed-extract) - (number 10) 
 	(number-executedDObIOb-prepare ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-preheat ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-turn ?o1 ?o2 - object) - (number 5) 
 	(number-executedDObIOb-cookies ?o1 ?o2 - object) - (number 5) 
 	(number-executedIOb-cream ?o - object) - (number 5) 
 	(number-executedIOb-add ?o - object) - (number 5) 
 	(number-executedIOb-shape ?o - object) - (number 5) 
 	(number-executedIOb-bake ?o - object) - (number 5) 
 	(number-executedIOb-stir ?o - object) - (number 5) 
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
 
	(:action finished
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))  
 	 	 	(<= (number-executed-finished) 10) 
 	 	 	(executed-roll) 
 	 	 	
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
 	 	 	 ) 
 	 	:effect (and (executed-extract) 
 	 	 	(increase (number-executed-extract) 1) 
 	 	 	  ) 
 	)  
 
	(:action prepare
 	 	:irrational 
 	 	:parameters (?devotion - devotion ?ambiguous - ambiguous)
 	 	;:saliency (prepare-saliency ?devotion ?ambiguous)
 	 	:precondition (and (<= (number-executedDObIOb-prepare ?devotion ?ambiguous) 5) 
 	 	 	 (property-poss ?ambiguous) 
 	 	 	(not (= ?devotion ?ambiguous))
	 	 	 (not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-prepare ?devotion ?ambiguous) 1) 
 	 	(executed-prepare ?devotion ?ambiguous) 
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
 
	(:action turn
 	 	:irrational 
 	 	:parameters (?kitchen-appliance1 - kitchen-appliance ?kitchen-appliance2 - kitchen-appliance)
 	 	;:saliency (turn-saliency ?kitchen-appliance1 ?kitchen-appliance2)
 	 	:precondition (and (<= (number-executedDObIOb-turn ?kitchen-appliance1 ?kitchen-appliance2) 5) 
 	 	 	 (property-on ?kitchen-appliance1) 
 	 	 	(not (= ?kitchen-appliance1 ?kitchen-appliance2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-turn ?kitchen-appliance1 ?kitchen-appliance2) 1) 
 	 	(executed-turn ?kitchen-appliance1 ?kitchen-appliance2) 
 	 	 	  ) 
 	)  
 
	(:action cookies
 	 	:irrational 
 	 	:parameters (?sweetening1 - sweetening ?sweetening2 - sweetening)
 	 	;:saliency (cookies-saliency ?sweetening1 ?sweetening2)
 	 	:precondition (and (<= (number-executedDObIOb-cookies ?sweetening1 ?sweetening2) 5) 
 	 	 	 (property-powdered ?sweetening1) 
 	 	 	(property-in ?sweetening1) 
 	 	 	(not (= ?sweetening1 ?sweetening2))
	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedDObIOb-cookies ?sweetening1 ?sweetening2) 1) 
 	 	(executed-cookies ?sweetening1 ?sweetening2) 
 	 	 	  ) 
 	)  
 
	(:action cream
 	 	:irrational 
 	 	:parameters (?dairy-product - dairy-product)
 	 	;:saliency (cream-saliency ?dairy-product)
 	 	:precondition (and (<= (number-executedIOb-cream ?dairy-product) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-cream ?dairy-product) 1) 
 	 	(executed-cream ?dairy-product) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?foodstuff - foodstuff)
 	 	;:saliency (add-saliency ?foodstuff)
 	 	:precondition (and (<= (number-executedIOb-add ?foodstuff) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-extract) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-add ?foodstuff) 1) 
 	 	(executed-add ?foodstuff) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?wood - wood)
 	 	;:saliency (add-saliency ?wood)
 	 	:precondition (and (<= (number-executedIOb-add ?wood) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-extract) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-add ?wood) 1) 
 	 	(executed-add ?wood) 
 	 	 	  ) 
 	)  
 
	(:action add
 	 	:irrational 
 	 	:parameters (?potato - potato)
 	 	;:saliency (add-saliency ?potato)
 	 	:precondition (and (<= (number-executedIOb-add ?potato) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-extract) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-add ?potato) 1) 
 	 	(executed-add ?potato) 
 	 	 	  ) 
 	)  
 
	(:action shape
 	 	:irrational 
 	 	:parameters (?cake - cake)
 	 	;:saliency (shape-saliency ?cake)
 	 	:precondition (and (<= (number-executedIOb-shape ?cake) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-shape ?cake) 1) 
 	 	(executed-shape ?cake) 
 	 	 	  ) 
 	)  
 
	(:action bake
 	 	:irrational 
 	 	:parameters (?cake - cake)
 	 	;:saliency (bake-saliency ?cake)
 	 	:precondition (and (<= (number-executedIOb-bake ?cake) 5) 
 	 	 	(not (finished)) 
 	 	 	(executed-shape ?cake) 
 	 	 	
 ) 
 	 	:effect (and (increase (number-executedIOb-bake ?cake) 1) 
 	 	(executed-bake ?cake) 
 	 	 	  ) 
 	)  
 
	(:action stir
 	 	:irrational 
 	 	:parameters (?ovum - ovum)
 	 	;:saliency (stir-saliency ?ovum)
 	 	:precondition (and (<= (number-executedIOb-stir ?ovum) 5) 
 	 	 	(not (finished)) 
 	 	 	 ) 
 	 	:effect (and (increase (number-executedIOb-stir ?ovum) 1) 
 	 	(executed-stir ?ovum) 
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
 
	(:action finish
 	 	:irrational 
 	 	:parameters ()
 	 	:precondition (and (not (finished))
)
 	 	:effect (and (finished))  
 
)) 
