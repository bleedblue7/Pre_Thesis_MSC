(define (problem 2ndex_BlueberryFrenchToast) 
 
 (:domain 2ndex_BlueberryFrenchToast) 
 
 (:init 
 	 (not (finished)) 
 	 (executed-chill) 
 	(executed-coat bread mixture) 
 	(executed-pour dish dish) 
 	(executed-preheat oven f) 
 	(executed-bake minutes minutes) 
 	(executed-garnish dish sugar) 
 	(executed-make batter) 
 	(executed-top pan) 
 	(executed-put nuts) 
 	(executed-put cheese) 
 	(executed-put blueberries) 
 	(=(number-executed-serve) 0) 
 	(=(number-executed-cream) 0) 
 	(=(number-executed-chill) 0) 
 	(=(number-executedDObIOb-coat bread mixture) 0) 
 	(=(number-executedDObIOb-preheat oven f) 0) 
 	(=(number-executedDObIOb-garnish dish sugar) 0) 
 	(=(number-executedDObIOb-pour dish dish) 0) 
 	(=(number-executedDObIOb-mixture refrigerator refrigerator) 0) 
 	(=(number-executedDObIOb-bake minutes minutes) 0) 
 	(=(number-executedIOb-make batter) 0) 
 	(=(number-executedIOb-take bowl) 0) 
 	(=(number-executedIOb-whisk milk) 0) 
 	(=(number-executedIOb-whisk eggs) 0) 
 	(=(number-executedIOb-whisk flour) 0) 
 	(=(number-executedIOb-whisk vanilla) 0) 
 	(=(number-executedIOb-whisk sugar) 0) 
 	(=(number-executedIOb-whisk salt) 0) 
 	(=(number-executedIOb-top pan) 0) 
 	(=(number-executedIOb-put nuts) 0) 
 	(=(number-executedIOb-put cheese) 0) 
 	(=(number-executedIOb-put blueberries) 0) 
 	(property-into mixture) 
 	(property-into dish) 
 	(property-in refrigerator) 
 	(property-to f) 
 	(property-for minutes) 
 	(property-with sugar) 
 	(property-large bowl) 
 	(property-casserole dish) 
 	 
 	) 
 
 (:goal (and
 	 (=(number-executed-serve) 1) 
 	(=(number-executed-cream) 1) 
 	(=(number-executed-chill) 1) 
 	(=(number-executedDObIOb-coat bread mixture) 1) 
 	(=(number-executedDObIOb-preheat oven f) 1) 
 	(=(number-executedDObIOb-garnish dish sugar) 1) 
 	(=(number-executedDObIOb-pour dish dish) 1) 
 	(=(number-executedDObIOb-mixture refrigerator refrigerator) 1) 
 	(=(number-executedDObIOb-bake minutes minutes) 1) 
 	(=(number-executedIOb-make batter) 1) 
 	(=(number-executedIOb-take bowl) 1) 
 	(=(number-executedIOb-whisk milk) 1) 
 	(=(number-executedIOb-whisk eggs) 1) 
 	(=(number-executedIOb-whisk flour) 1) 
 	(=(number-executedIOb-whisk vanilla) 1) 
 	(=(number-executedIOb-whisk sugar) 1) 
 	(=(number-executedIOb-whisk salt) 1) 
 	(=(number-executedIOb-top pan) 1) 
 	(=(number-executedIOb-put nuts) 1) 
 	(=(number-executedIOb-put cheese) 1) 
 	(=(number-executedIOb-put blueberries) 1) 
 	(finished)
)) 
 
)