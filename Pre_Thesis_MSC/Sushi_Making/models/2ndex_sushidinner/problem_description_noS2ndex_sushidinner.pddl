(define (problem 2ndex_sushidinner) 
 
 (:domain 2ndex_sushidinner) 
 
 (:init 
 	 (not (finished)) 
 	 (executed-purchase) 
 	(executed-arrange setting) 
 	(executed-allow everyone) 
 	(executed-create sushi) 
 	(=(number-executed-serve) 0) 
 	(=(number-executed-purchase) 0) 
 	(=(number-executedDObIOb-prepare rice advance) 0) 
 	(=(number-executedIOb-prepare ingredients) 0) 
 	(=(number-executedIOb-prepare fillings) 0) 
 	(=(number-executedIOb-choose fish) 0) 
 	(=(number-executedIOb-choose meat) 0) 
 	(=(number-executedIOb-choose vegetables) 0) 
 	(=(number-executedIOb-choose condiments) 0) 
 	(=(number-executedIOb-arrange setting) 0) 
 	(=(number-executedIOb-allow everyone) 0) 
 	(=(number-executedIOb-create sushi) 0) 
 	(property-in advance) 
 	(property-thesushi rice) 
 	(property-nori sheets) 
 	 
 	) 
 
 (:goal (and
 	 (=(number-executed-serve) 1) 
 	(=(number-executed-purchase) 1) 
 	(=(number-executedDObIOb-prepare rice advance) 1) 
 	(=(number-executedIOb-prepare ingredients) 1) 
 	(=(number-executedIOb-prepare fillings) 1) 
 	(=(number-executedIOb-choose fish) 1) 
 	(=(number-executedIOb-choose meat) 1) 
 	(=(number-executedIOb-choose vegetables) 1) 
 	(=(number-executedIOb-choose condiments) 1) 
 	(=(number-executedIOb-arrange setting) 1) 
 	(=(number-executedIOb-allow everyone) 1) 
 	(=(number-executedIOb-create sushi) 1) 
 	(finished)
)) 
 
)