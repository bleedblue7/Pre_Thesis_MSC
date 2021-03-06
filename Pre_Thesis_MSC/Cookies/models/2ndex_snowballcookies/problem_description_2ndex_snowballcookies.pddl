(define (problem 2ndex_snowballcookies) 
 
 (:domain 2ndex_snowballcookies) 
 
 (:init 
 	 (not (finished)) 
 	 (executed-extract) 
 	(executed-roll) 
 	(executed-turn oven oven) 
 	(executed-preheat oven f) 
 	(executed-stir egg) 
 	(executed-stir vanilla) 
 	(executed-shape cookies) 
 	(executed-bake cookies) 
 	(=(number-executed-roll) 0) 
 	(=(number-executed-finished) 0) 
 	(=(number-executed-extract) 0) 
 	(=(number-executedDObIOb-preheat oven f) 0) 
 	(=(number-executedDObIOb-turn oven oven) 0) 
 	(=(number-executedDObIOb-cookies sugar sugar) 0) 
 	(=(number-executedIOb-stir egg) 0) 
 	(=(number-executedIOb-stir vanilla) 0) 
 	(=(number-executedIOb-cream butter) 0) 
 	(=(number-executedIOb-add flour) 0) 
 	(=(number-executedIOb-add pecans) 0) 
 	(=(number-executedIOb-add chips) 0) 
 	(=(number-executedIOb-shape cookies) 0) 
 	(=(number-executedIOb-bake cookies) 0) 
 	(=(roll-saliency) 1) 
 	(=(finished-saliency) 1) 
 	(=(extract-saliency) 1) 
 	(=(preheat-saliency oven f) 1) 
 	(=(turn-saliency oven oven) 1) 
 	(=(cookies-saliency sugar sugar) 1) 
 	(=(stir-saliency egg) 1) 
 	(=(stir-saliency vanilla) 1) 
 	(=(cream-saliency butter) 1) 
 	(=(add-saliency flour) 1) 
 	(=(add-saliency pecans) 1) 
 	(=(add-saliency chips) 1) 
 	(=(shape-saliency cookies) 1) 
 	(=(bake-saliency cookies) 1) 
 	(property-on oven) 
 	(property-poss your) 
 	(property-to f) 
 	(property-in egg) 
 	(property-in vanilla) 
 	(property-in sugar) 
 	(property-snowball cookies) 
 	(property-powdered sugar) 
 	 
 	) 
 
 (:goal (and
 	 (=(number-executed-roll) 1) 
 	(=(number-executed-finished) 1) 
 	(=(number-executed-extract) 1) 
 	(=(number-executedDObIOb-preheat oven f) 1) 
 	(=(number-executedDObIOb-turn oven oven) 1) 
 	(=(number-executedDObIOb-cookies sugar sugar) 1) 
 	(=(number-executedIOb-stir egg) 1) 
 	(=(number-executedIOb-stir vanilla) 1) 
 	(=(number-executedIOb-cream butter) 1) 
 	(=(number-executedIOb-add flour) 1) 
 	(=(number-executedIOb-add pecans) 1) 
 	(=(number-executedIOb-add chips) 1) 
 	(=(number-executedIOb-shape cookies) 1) 
 	(=(number-executedIOb-bake cookies) 1) 
 	(finished)
)) 
 
)