(define (problem 2ndex_rainbowsushi) 
 
 (:domain 2ndex_rainbowsushi) 
 
 (:init 
 	 (not (finished)) 
 	 (executed-roll) 
 	(executed-color) 
 	(executed-cut) 
 	(executed-add fillings) 
 	(executed-press toppings) 
 	(=(number-executed-roll) 0) 
 	(=(number-executed-cut) 0) 
 	(=(number-executed-color) 0) 
 	(=(number-executedDObIOb-place nori sheet) 0) 
 	(=(number-executedDObIOb-top roll roll) 0) 
 	(=(number-executedIOb-spread rice) 0) 
 	(=(number-executedIOb-spread wasabi) 0) 
 	(=(number-executedIOb-add fillings) 0) 
 	(=(number-executedIOb-press toppings) 0) 
 	(property-poss your) 
 	(property-on sheet) 
 	(property-of roll) 
 	 
 	) 
 
 (:goal (and
 	 (=(number-executed-roll) 1) 
 	(=(number-executed-cut) 1) 
 	(=(number-executed-color) 1) 
 	(=(number-executedDObIOb-place nori sheet) 1) 
 	(=(number-executedDObIOb-top roll roll) 1) 
 	(=(number-executedIOb-spread rice) 1) 
 	(=(number-executedIOb-spread wasabi) 1) 
 	(=(number-executedIOb-add fillings) 1) 
 	(=(number-executedIOb-press toppings) 1) 
 	(finished)
)) 
 
)