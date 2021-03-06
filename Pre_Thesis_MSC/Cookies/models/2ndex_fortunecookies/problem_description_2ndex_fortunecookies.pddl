(define (problem 2ndex_fortunecookies) 
 
 (:domain 2ndex_fortunecookies) 
 
 (:init 
 	 (not (finished)) 
 	 (executed-beat) 
 	(executed-preheat oven f) 
 	(executed-measure strips) 
 	(executed-stir water) 
 	(executed-stir batter) 
 	(executed-space them) 
 	(=(number-executed-finished) 0) 
 	(=(number-executed-extract) 0) 
 	(=(number-executed-beat) 0) 
 	(=(number-executedDObIOb-preheat oven f) 0) 
 	(=(number-executedDObIOb-put flour bowl) 0) 
 	(=(number-executedDObIOb-put cornstarch bowl) 0) 
 	(=(number-executedDObIOb-add mixture egg) 0) 
 	(=(number-executedDObIOb-place batter sheet) 0) 
 	(=(number-executedDObIOb-remove cookie spatula) 0) 
 	(=(number-executedDObIOb-flip cookie hand) 0) 
 	(=(number-executedDObIOb-place fortune middle) 0) 
 	(=(number-executedDObIOb-fold cookie half) 0) 
 	(=(number-executedDObIOb-place cookie cup) 0) 
 	(=(number-executedDObIOb-white bowl bowl) 0) 
 	(=(number-executedDObIOb-sugar bowl bowl) 0) 
 	(=(number-executedDObIOb-salt bowl bowl) 0) 
 	(=(number-executedDObIOb-bake minutes minutes) 0) 
 	(=(number-executedDObIOb-continue cookies cookies) 0) 
 	(=(number-executedIOb-measure strips) 0) 
 	(=(number-executedIOb-add extract) 0) 
 	(=(number-executedIOb-add oil) 0) 
 	(=(number-executedIOb-stir water) 0) 
 	(=(number-executedIOb-add flour) 0) 
 	(=(number-executedIOb-add cornstarch) 0) 
 	(=(number-executedIOb-add sugar) 0) 
 	(=(number-executedIOb-stir batter) 0) 
 	(=(number-executedIOb-space them) 0) 
 	(=(number-executedIOb-pull edges) 0) 
 	(=(finished-saliency) 1) 
 	(=(extract-saliency) 1) 
 	(=(beat-saliency) 1) 
 	(=(preheat-saliency oven f) 1) 
 	(=(put-saliency flour bowl) 1) 
 	(=(put-saliency cornstarch bowl) 1) 
 	(=(add-saliency mixture egg) 1) 
 	(=(place-saliency batter sheet) 1) 
 	(=(remove-saliency cookie spatula) 1) 
 	(=(flip-saliency cookie hand) 1) 
 	(=(place-saliency fortune middle) 1) 
 	(=(fold-saliency cookie half) 1) 
 	(=(place-saliency cookie cup) 1) 
 	(=(white-saliency bowl bowl) 1) 
 	(=(sugar-saliency bowl bowl) 1) 
 	(=(salt-saliency bowl bowl) 1) 
 	(=(bake-saliency minutes minutes) 1) 
 	(=(continue-saliency cookies cookies) 1) 
 	(=(measure-saliency strips) 1) 
 	(=(add-saliency extract) 1) 
 	(=(add-saliency oil) 1) 
 	(=(stir-saliency water) 1) 
 	(=(add-saliency flour) 1) 
 	(=(add-saliency cornstarch) 1) 
 	(=(add-saliency sugar) 1) 
 	(=(stir-saliency batter) 1) 
 	(=(space-saliency them) 1) 
 	(=(pull-saliency edges) 1) 
 	(property-to f) 
 	(property-in bowl) 
 	(property-to egg) 
 	(property-onto sheet) 
 	(property-npmod inches) 
 	(property-for minutes) 
 	(property-with spatula) 
 	(property-in hand) 
 	(property-poss your) 
 	(property-in middle) 
 	(property-of cookie) 
 	(property-in half) 
 	(property-in cup) 
 	(property-with cookies) 
 	(property-almond extract) 
 	(property-other cookies) 
 	(property-apart space) 
 	 
 	) 
 
 (:goal (and
 	 (=(number-executed-finished) 1) 
 	(=(number-executed-extract) 1) 
 	(=(number-executed-beat) 1) 
 	(=(number-executedDObIOb-preheat oven f) 1) 
 	(=(number-executedDObIOb-put flour bowl) 1) 
 	(=(number-executedDObIOb-put cornstarch bowl) 1) 
 	(=(number-executedDObIOb-add mixture egg) 1) 
 	(=(number-executedDObIOb-place batter sheet) 1) 
 	(=(number-executedDObIOb-remove cookie spatula) 1) 
 	(=(number-executedDObIOb-flip cookie hand) 1) 
 	(=(number-executedDObIOb-place fortune middle) 1) 
 	(=(number-executedDObIOb-fold cookie half) 1) 
 	(=(number-executedDObIOb-place cookie cup) 1) 
 	(=(number-executedDObIOb-white bowl bowl) 1) 
 	(=(number-executedDObIOb-sugar bowl bowl) 1) 
 	(=(number-executedDObIOb-salt bowl bowl) 1) 
 	(=(number-executedDObIOb-bake minutes minutes) 1) 
 	(=(number-executedDObIOb-continue cookies cookies) 1) 
 	(=(number-executedIOb-measure strips) 1) 
 	(=(number-executedIOb-add extract) 1) 
 	(=(number-executedIOb-add oil) 1) 
 	(=(number-executedIOb-stir water) 1) 
 	(=(number-executedIOb-add flour) 1) 
 	(=(number-executedIOb-add cornstarch) 1) 
 	(=(number-executedIOb-add sugar) 1) 
 	(=(number-executedIOb-stir batter) 1) 
 	(=(number-executedIOb-space them) 1) 
 	(=(number-executedIOb-pull edges) 1) 
 	(finished)
)) 
 
)