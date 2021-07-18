(define (problem 2ndex_Tofu French toast) 
 
 (:domain 2ndex_Tofu French toast) 
 
 (:init 
 	 (not (finished)) 
 	 (executed-heat) 
 	(executed-combine everything bread) 
 	(executed-combine everything butter) 
 	(executed-dip bread batter) 
 	(executed-cook bread skillet) 
 	(executed-make batter) 
 	(executed-take blender) 
 	(executed-absorb mixture) 
 	(executed-allow bread) 
 	(=(number-executed-heat) 0) 
 	(=(number-executedDObIOb-combine everything bread) 0) 
 	(=(number-executedDObIOb-combine everything butter) 0) 
 	(=(number-executedDObIOb-dip bread batter) 0) 
 	(=(number-executedDObIOb-cook bread skillet) 0) 
 	(=(number-executedDObIOb-serve dish fruits) 0) 
 	(=(number-executedDObIOb-butter skillet skillet) 0) 
 	(=(number-executedDObIOb-skillet heat heat) 0) 
 	(=(number-executedIOb-make batter) 0) 
 	(=(number-executedIOb-take blender) 0) 
 	(=(number-executedIOb-allow bread) 0) 
 	(=(number-executedIOb-absorb mixture) 0) 
 	(=(heat-saliency) 1) 
 	(=(combine-saliency everything bread) 1) 
 	(=(combine-saliency everything butter) 1) 
 	(=(dip-saliency bread batter) 1) 
 	(=(cook-saliency bread skillet) 1) 
 	(=(serve-saliency dish fruits) 1) 
 	(=(butter-saliency skillet skillet) 1) 
 	(=(skillet-saliency heat heat) 1) 
 	(=(make-saliency batter) 1) 
 	(=(take-saliency blender) 1) 
 	(=(allow-saliency bread) 1) 
 	(=(absorb-saliency mixture) 1) 
 	(property-except bread) 
 	(property-except butter) 
 	(property-over heat) 
 	(property-in batter) 
 	(property-in skillet) 
 	(property-with fruits) 
 	(property-fresh fruits) 
 	 
 	) 
 
 (:goal (and
 	 (=(number-executed-heat) 1) 
 	(=(number-executedDObIOb-combine everything bread) 1) 
 	(=(number-executedDObIOb-combine everything butter) 1) 
 	(=(number-executedDObIOb-dip bread batter) 1) 
 	(=(number-executedDObIOb-cook bread skillet) 1) 
 	(=(number-executedDObIOb-serve dish fruits) 1) 
 	(=(number-executedDObIOb-butter skillet skillet) 1) 
 	(=(number-executedDObIOb-skillet heat heat) 1) 
 	(=(number-executedIOb-make batter) 1) 
 	(=(number-executedIOb-take blender) 1) 
 	(=(number-executedIOb-allow bread) 1) 
 	(=(number-executedIOb-absorb mixture) 1) 
 	(finished)
)) 
 
)