(define (problem 2ndex_BananaFrenchtoast) 
 
 (:domain 2ndex_BananaFrenchtoast) 
 
 (:init 
 	 (not (finished)) 
 	 (executed-heat) 
 	(executed-dip bread batter) 
 	(executed-cook bread skillet) 
 	(executed-make mixture) 
 	(executed-absorb mixture) 
 	(executed-allow bread) 
 	(=(number-executed-heat) 0) 
 	(=(number-executedDObIOb-dip bread batter) 0) 
 	(=(number-executedDObIOb-cook bread skillet) 0) 
 	(=(number-executedDObIOb-garnish toast cinnamon) 0) 
 	(=(number-executedDObIOb-skillet heat heat) 0) 
 	(=(number-executedIOb-make mixture) 0) 
 	(=(number-executedIOb-take blender) 0) 
 	(=(number-executedIOb-combine milk) 0) 
 	(=(number-executedIOb-combine egg) 0) 
 	(=(number-executedIOb-combine whites) 0) 
 	(=(number-executedIOb-combine bananas) 0) 
 	(=(number-executedIOb-combine thevanilla) 0) 
 	(=(number-executedIOb-allow bread) 0) 
 	(=(number-executedIOb-absorb mixture) 0) 
 	(=(heat-saliency) 1) 
 	(=(dip-saliency bread batter) 1) 
 	(=(cook-saliency bread skillet) 1) 
 	(=(garnish-saliency toast cinnamon) 1) 
 	(=(skillet-saliency heat heat) 1) 
 	(=(make-saliency mixture) 1) 
 	(=(take-saliency blender) 1) 
 	(=(combine-saliency milk) 1) 
 	(=(combine-saliency egg) 1) 
 	(=(combine-saliency whites) 1) 
 	(=(combine-saliency bananas) 1) 
 	(=(combine-saliency thevanilla) 1) 
 	(=(allow-saliency bread) 1) 
 	(=(absorb-saliency mixture) 1) 
 	(property-to heat) 
 	(property-in batter) 
 	(property-in skillet) 
 	(property-with cinnamon) 
 	(property-french toast) 
 	 
 	) 
 
 (:goal (and
 	 (=(number-executed-heat) 1) 
 	(=(number-executedDObIOb-dip bread batter) 1) 
 	(=(number-executedDObIOb-cook bread skillet) 1) 
 	(=(number-executedDObIOb-garnish toast cinnamon) 1) 
 	(=(number-executedDObIOb-skillet heat heat) 1) 
 	(=(number-executedIOb-make mixture) 1) 
 	(=(number-executedIOb-take blender) 1) 
 	(=(number-executedIOb-combine milk) 1) 
 	(=(number-executedIOb-combine egg) 1) 
 	(=(number-executedIOb-combine whites) 1) 
 	(=(number-executedIOb-combine bananas) 1) 
 	(=(number-executedIOb-combine thevanilla) 1) 
 	(=(number-executedIOb-allow bread) 1) 
 	(=(number-executedIOb-absorb mixture) 1) 
 	(finished)
)) 
 
)