(define (problem 2ndex_cleanmachine3) 
 
 (:domain 2ndex_cleanmachine3) 
 
 (:init 
 	 (not (finished)) 
 	 (executed-seals) 
 	(=(number-executed-seals) 0) 
 	(=(number-executed-filter) 0) 
 	(=(number-executed-clean) 0) 
 	(=(number-executedDObIOb-turn washer setting) 0) 
 	(property-onto setting) 
 	(property-poss washer) 
 	(property-with soda) 
 	(property-with vinegar) 
 	(property-poss its) 
 	(property-clean door) 
 	(property-hottest setting) 
 	(property-baking soda) 
 	(property-full course) 
 	(property-second cycle) 
 	(property-other components) 
 	 
 	) 
 
 (:goal (and
 	 (=(number-executed-seals) 1) 
 	(=(number-executed-filter) 1) 
 	(=(number-executed-clean) 1) 
 	(=(number-executedDObIOb-turn washer setting) 1) 
 	(finished)
)) 
 
)