(define (problem 2ndex_bananasushi) 
 
 (:domain 2ndex_bananasushi) 
 
 (:init 
 	 (not (finished)) 
 	 (executed-roll) 
 	(executed-slice) 
 	(executed-sprinkle sugar slice) 
 	(executed-place banana length) 
 	(executed-cover roll honey) 
 	(executed-cover roll syrup) 
 	(executed-ends banana) 
 	(=(number-executed-slice) 0) 
 	(=(number-executed-serve) 0) 
 	(=(number-executed-roll) 0) 
 	(=(number-executedDObIOb-cut edges bread) 0) 
 	(=(number-executedDObIOb-spread nutella bread) 0) 
 	(=(number-executedDObIOb-spread butter bread) 0) 
 	(=(number-executedDObIOb-sprinkle sugar slice) 0) 
 	(=(number-executedDObIOb-place banana length) 0) 
 	(=(number-executedDObIOb-cover roll honey) 0) 
 	(=(number-executedDObIOb-cover roll syrup) 0) 
 	(=(number-executedIOb-ends banana) 0) 
 	(property-off bread) 
 	(property-over bread) 
 	(property-over slice) 
 	(property-along length) 
 	(property-of bread) 
 	(property-in honey) 
 	(property-in syrup) 
 	(property-golden syrup) 
 	 
 	) 
 
 (:goal (and
 	 (=(number-executed-slice) 1) 
 	(=(number-executed-serve) 1) 
 	(=(number-executed-roll) 1) 
 	(=(number-executedDObIOb-cut edges bread) 1) 
 	(=(number-executedDObIOb-spread nutella bread) 1) 
 	(=(number-executedDObIOb-spread butter bread) 1) 
 	(=(number-executedDObIOb-sprinkle sugar slice) 1) 
 	(=(number-executedDObIOb-place banana length) 1) 
 	(=(number-executedDObIOb-cover roll honey) 1) 
 	(=(number-executedDObIOb-cover roll syrup) 1) 
 	(=(number-executedIOb-ends banana) 1) 
 	(finished)
)) 
 
)