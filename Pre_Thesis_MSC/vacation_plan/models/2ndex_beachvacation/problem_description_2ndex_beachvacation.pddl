(define (problem 2ndex_beachvacation) 
 
 (:domain 2ndex_beachvacation) 
 
 (:init 
 	 (not (finished)) 
 	 (executed-alerts) 
 	(executed-sign) 
 	(executed-compare) 
 	(executed-drive) 
 	(executed-fly) 
 	(executed-look vacations vacations) 
 	(executed-search agencies) 
 	(executed-choose location) 
 	(executed-find lodging) 
 	(=(number-executed-sign) 0) 
 	(=(number-executed-fly) 0) 
 	(=(number-executed-drive) 0) 
 	(=(number-executed-compare) 0) 
 	(=(number-executed-alerts) 0) 
 	(=(number-executedDObIOb-look vacations vacations) 0) 
 	(=(number-executedDObIOb-travel season season) 0) 
 	(=(number-executedIOb-do shopping) 0) 
 	(=(number-executedIOb-search agencies) 0) 
 	(=(number-executedIOb-choose location) 0) 
 	(=(number-executedIOb-find lodging) 0) 
 	(=(sign-saliency) 1) 
 	(=(fly-saliency) 1) 
 	(=(drive-saliency) 1) 
 	(=(compare-saliency) 1) 
 	(=(alerts-saliency) 1) 
 	(=(look-saliency vacations vacations) 1) 
 	(=(travel-saliency season season) 1) 
 	(=(do-saliency shopping) 1) 
 	(=(search-saliency agencies) 1) 
 	(=(choose-saliency location) 1) 
 	(=(find-saliency lodging) 1) 
 	(property-of discounts) 
 	(property-for travel) 
 	(property-for vacations) 
 	(property-poss your) 
 	(property-in season) 
 	(property-online agencies) 
 	(property-affordable location) 
 	(property-inclusive vacations) 
 	(property-affordable lodging) 
 	(property-own food) 
 	(property-off season) 
 	(property-cheaper compare) 
 	 
 	) 
 
 (:goal (and
 	 (=(number-executed-sign) 1) 
 	(=(number-executed-fly) 1) 
 	(=(number-executed-drive) 1) 
 	(=(number-executed-compare) 1) 
 	(=(number-executed-alerts) 1) 
 	(=(number-executedDObIOb-look vacations vacations) 1) 
 	(=(number-executedDObIOb-travel season season) 1) 
 	(=(number-executedIOb-do shopping) 1) 
 	(=(number-executedIOb-search agencies) 1) 
 	(=(number-executedIOb-choose location) 1) 
 	(=(number-executedIOb-find lodging) 1) 
 	(finished)
)) 
 
)