(define (problem 2ndex_stuffedFrenchToast) 
 
 (:domain 2ndex_stuffedFrenchToast) 
 
 (:init 
 	 (not (finished)) 
 	 (executed-select) 
 	(executed-slice bread slices) 
 	(executed-combine ingredients bag) 
 	(executed-coat bread sides) 
 	(executed-dip bread mixture) 
 	(executed-stuff bread) 
 	(=(number-executed-select) 0) 
 	(=(number-executedDObIOb-slice bread slices) 0) 
 	(=(number-executedDObIOb-combine ingredients bag) 0) 
 	(=(number-executedDObIOb-coat bread sides) 0) 
 	(=(number-executedDObIOb-dip bread mixture) 0) 
 	(=(number-executedIOb-stuff bread) 0) 
 	(=(number-executedIOb-take bowl) 0) 
 	(=(number-executedIOb-whisk cinnamon) 0) 
 	(=(number-executedIOb-whisk vanilla) 0) 
 	(property-into slices) 
 	(property-in bag) 
 	(property-of eggs) 
 	(property-of milk) 
 	(property-on sides) 
 	(property-in mixture) 
 	(property-for minutes) 
 	(property-white bread) 
 	(property-filling stuff) 
 	 
 	) 
 
 (:goal (and
 	 (=(number-executed-select) 1) 
 	(=(number-executedDObIOb-slice bread slices) 1) 
 	(=(number-executedDObIOb-combine ingredients bag) 1) 
 	(=(number-executedDObIOb-coat bread sides) 1) 
 	(=(number-executedDObIOb-dip bread mixture) 1) 
 	(=(number-executedIOb-stuff bread) 1) 
 	(=(number-executedIOb-take bowl) 1) 
 	(=(number-executedIOb-whisk cinnamon) 1) 
 	(=(number-executedIOb-whisk vanilla) 1) 
 	(finished)
)) 
 
)