(define (problem 2ndex_vegansushi) 
 
 (:domain 2ndex_vegansushi) 
 
 (:init 
 	 (not (finished)) 
 	 (executed-chill) 
 	(executed-pan) 
 	(executed-roll) 
 	(executed-toast ingredients frying) 
 	(executed-pour mixture blender) 
 	(executed-wait minutes minutes) 
 	(executed-place nori mat) 
 	(executed-spread norisheet norisheet) 
 	(executed-add vegetable center) 
 	(executed-cut pieces pieces) 
 	(executed-stir rice) 
 	(executed-stir syrup) 
 	(executed-stir vinegar) 
 	(executed-take bowl) 
 	(executed-use knife) 
 	(=(number-executed-serve) 0) 
 	(=(number-executed-roll) 0) 
 	(=(number-executed-pan) 0) 
 	(=(number-executed-gomashio) 0) 
 	(=(number-executed-chill) 0) 
 	(=(number-executedDObIOb-toast ingredients frying) 0) 
 	(=(number-executedDObIOb-pour mixture blender) 0) 
 	(=(number-executedDObIOb-place nori mat) 0) 
 	(=(number-executedDObIOb-add vegetable center) 0) 
 	(=(number-executedDObIOb-mixture refrigerator refrigerator) 0) 
 	(=(number-executedDObIOb-wait minutes minutes) 0) 
 	(=(number-executedDObIOb-spread norisheet norisheet) 0) 
 	(=(number-executedDObIOb-away sushi sushi) 0) 
 	(=(number-executedDObIOb-cut pieces pieces) 0) 
 	(=(number-executedIOb-take bowl) 0) 
 	(=(number-executedIOb-stir rice) 0) 
 	(=(number-executedIOb-stir syrup) 0) 
 	(=(number-executedIOb-stir vinegar) 0) 
 	(=(number-executedIOb-use knife) 0) 
 	(=(serve-saliency) 1) 
 	(=(roll-saliency) 1) 
 	(=(pan-saliency) 1) 
 	(=(gomashio-saliency) 1) 
 	(=(chill-saliency) 1) 
 	(=(toast-saliency ingredients frying) 1) 
 	(=(pour-saliency mixture blender) 1) 
 	(=(place-saliency nori mat) 1) 
 	(=(add-saliency vegetable center) 1) 
 	(=(mixture-saliency refrigerator refrigerator) 1) 
 	(=(wait-saliency minutes minutes) 1) 
 	(=(spread-saliency norisheet norisheet) 1) 
 	(=(away-saliency sushi sushi) 1) 
 	(=(cut-saliency pieces pieces) 1) 
 	(=(take-saliency bowl) 1) 
 	(=(stir-saliency rice) 1) 
 	(=(stir-saliency syrup) 1) 
 	(=(stir-saliency vinegar) 1) 
 	(=(use-saliency knife) 1) 
 	(property-in frying) 
 	(property-into blender) 
 	(property-for seconds) 
 	(property-for sushi) 
 	(property-in refrigerator) 
 	(property-for minutes) 
 	(property-onto mat) 
 	(property-of mixture) 
 	(property-of norisheet) 
 	(property-into center) 
 	(property-of rice) 
 	(property-npmod sushi) 
 	(property-into pieces) 
 	(property-dry frying) 
 	(property-necessary ingredients) 
 	(property-maple syrup) 
 	(property-little vegetable) 
 	(property-sharp knife) 
 	 
 	) 
 
 (:goal (and
 	 (=(number-executed-serve) 1) 
 	(=(number-executed-roll) 1) 
 	(=(number-executed-pan) 1) 
 	(=(number-executed-gomashio) 1) 
 	(=(number-executed-chill) 1) 
 	(=(number-executedDObIOb-toast ingredients frying) 1) 
 	(=(number-executedDObIOb-pour mixture blender) 1) 
 	(=(number-executedDObIOb-place nori mat) 1) 
 	(=(number-executedDObIOb-add vegetable center) 1) 
 	(=(number-executedDObIOb-mixture refrigerator refrigerator) 1) 
 	(=(number-executedDObIOb-wait minutes minutes) 1) 
 	(=(number-executedDObIOb-spread norisheet norisheet) 1) 
 	(=(number-executedDObIOb-away sushi sushi) 1) 
 	(=(number-executedDObIOb-cut pieces pieces) 1) 
 	(=(number-executedIOb-take bowl) 1) 
 	(=(number-executedIOb-stir rice) 1) 
 	(=(number-executedIOb-stir syrup) 1) 
 	(=(number-executedIOb-stir vinegar) 1) 
 	(=(number-executedIOb-use knife) 1) 
 	(finished)
)) 
 
)