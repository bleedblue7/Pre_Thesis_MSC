(define (problem 2ndex_spicyFrenchToast) 
 
 (:domain 2ndex_spicyFrenchToast) 
 
 (:init 
 	 (not (finished)) 
 	 (executed-combine) 
 	(executed-fry) 
 	(executed-take) 
 	(executed-beat eggs bowl) 
 	(executed-paste eggs eggs) 
 	(executed-put spices spices) 
 	(executed-put oil pan) 
 	(executed-crack bowl) 
 	(executed-whisk eggs) 
 	(=(number-executed-take) 0) 
 	(=(number-executed-serve) 0) 
 	(=(number-executed-mix) 0) 
 	(=(number-executed-heat) 0) 
 	(=(number-executed-fry) 0) 
 	(=(number-executed-combine) 0) 
 	(=(number-executed-apply) 0) 
 	(=(number-executedDObIOb-beat eggs bowl) 0) 
 	(=(number-executedDObIOb-put oil pan) 0) 
 	(=(number-executedDObIOb-soak slice mixture) 0) 
 	(=(number-executedDObIOb-place towel bread) 0) 
 	(=(number-executedDObIOb-put spices spices) 0) 
 	(=(number-executedDObIOb-paste eggs eggs) 0) 
 	(=(number-executedDObIOb-slices pan pan) 0) 
 	(=(number-executedIOb-crack bowl) 0) 
 	(=(number-executedIOb-whisk eggs) 0) 
 	(=(number-executedIOb-add powder) 0) 
 	(=(number-executedIOb-add salt) 0) 
 	(=(number-executedIOb-add turmeric) 0) 
 	(=(number-executedIOb-add milk) 0) 
 	(=(number-executedIOb-add mix) 0) 
 	(=(number-executedIOb-allow pan) 0) 
 	(=(number-executedIOb-cook bread) 0) 
 	(=(number-executedIOb-soak grease) 0) 
 	(=(take-saliency) 1) 
 	(=(serve-saliency) 1) 
 	(=(mix-saliency) 1) 
 	(=(heat-saliency) 1) 
 	(=(fry-saliency) 1) 
 	(=(combine-saliency) 1) 
 	(=(apply-saliency) 1) 
 	(=(beat-saliency eggs bowl) 1) 
 	(=(put-saliency oil pan) 1) 
 	(=(soak-saliency slice mixture) 1) 
 	(=(place-saliency towel bread) 1) 
 	(=(put-saliency spices spices) 1) 
 	(=(paste-saliency eggs eggs) 1) 
 	(=(slices-saliency pan pan) 1) 
 	(=(crack-saliency bowl) 1) 
 	(=(whisk-saliency eggs) 1) 
 	(=(add-saliency powder) 1) 
 	(=(add-saliency salt) 1) 
 	(=(add-saliency turmeric) 1) 
 	(=(add-saliency milk) 1) 
 	(=(add-saliency mix) 1) 
 	(=(allow-saliency pan) 1) 
 	(=(cook-saliency bread) 1) 
 	(=(soak-saliency grease) 1) 
 	(property-in bowl) 
 	(property-in spices) 
 	(property-to eggs) 
 	(property-in pan) 
 	(property-in mixture) 
 	(property-of pan) 
 	(property-on_top_of bread) 
 	(property-large bowl) 
 	(property-red powder) 
 	(property-excess grease) 
 	(property-well together) 
 	 
 	) 
 
 (:goal (and
 	 (=(number-executed-take) 1) 
 	(=(number-executed-serve) 1) 
 	(=(number-executed-mix) 1) 
 	(=(number-executed-heat) 1) 
 	(=(number-executed-fry) 1) 
 	(=(number-executed-combine) 1) 
 	(=(number-executed-apply) 1) 
 	(=(number-executedDObIOb-beat eggs bowl) 1) 
 	(=(number-executedDObIOb-put oil pan) 1) 
 	(=(number-executedDObIOb-soak slice mixture) 1) 
 	(=(number-executedDObIOb-place towel bread) 1) 
 	(=(number-executedDObIOb-put spices spices) 1) 
 	(=(number-executedDObIOb-paste eggs eggs) 1) 
 	(=(number-executedDObIOb-slices pan pan) 1) 
 	(=(number-executedIOb-crack bowl) 1) 
 	(=(number-executedIOb-whisk eggs) 1) 
 	(=(number-executedIOb-add powder) 1) 
 	(=(number-executedIOb-add salt) 1) 
 	(=(number-executedIOb-add turmeric) 1) 
 	(=(number-executedIOb-add milk) 1) 
 	(=(number-executedIOb-add mix) 1) 
 	(=(number-executedIOb-allow pan) 1) 
 	(=(number-executedIOb-cook bread) 1) 
 	(=(number-executedIOb-soak grease) 1) 
 	(finished)
)) 
 
)