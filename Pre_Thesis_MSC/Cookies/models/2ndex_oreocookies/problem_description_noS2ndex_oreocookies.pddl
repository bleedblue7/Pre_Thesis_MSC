(define (problem 2ndex_oreocookies) 
 
 (:domain 2ndex_oreocookies) 
 
 (:init 
 	 (not (finished)) 
 	 (executed-preheat oven c) 
 	(executed-dough balls) 
 	(=(number-executed-mix) 0) 
 	(=(number-executed-line) 0) 
 	(=(number-executedDObIOb-preheat oven c) 0) 
 	(=(number-executedDObIOb-add flour bowl) 0) 
 	(=(number-executedDObIOb-add soda bowl) 0) 
 	(=(number-executedDObIOb-add salt bowl) 0) 
 	(=(number-executedDObIOb-add powder bowl) 0) 
 	(=(number-executedDObIOb-scoop ingredients mixer) 0) 
 	(=(number-executedDObIOb-scoop dough paper) 0) 
 	(=(number-executedDObIOb-bake cookies minutes) 0) 
 	(=(number-executedDObIOb-butter bowl bowl) 0) 
 	(=(number-executedDObIOb-sugar bowl bowl) 0) 
 	(=(number-executedDObIOb-pan paper paper) 0) 
 	(=(number-executedIOb-add eggs) 0) 
 	(=(number-executedIOb-dough balls) 0) 
 	(property-to c) 
 	(property-to bowl) 
 	(property-in bowl) 
 	(property-with butter) 
 	(property-with sugar) 
 	(property-with mixer) 
 	(property-with paper) 
 	(property-onto paper) 
 	(property-for minutes) 
 	(property-large bowl) 
 	(property-baking soda) 
 	(property-baking powder) 
 	(property-dry ingredients) 
 	(property-parchment paper) 
 	(property-flatten cookie) 
 	 
 	) 
 
 (:goal (and
 	 (=(number-executed-mix) 1) 
 	(=(number-executed-line) 1) 
 	(=(number-executedDObIOb-preheat oven c) 1) 
 	(=(number-executedDObIOb-add flour bowl) 1) 
 	(=(number-executedDObIOb-add soda bowl) 1) 
 	(=(number-executedDObIOb-add salt bowl) 1) 
 	(=(number-executedDObIOb-add powder bowl) 1) 
 	(=(number-executedDObIOb-scoop ingredients mixer) 1) 
 	(=(number-executedDObIOb-scoop dough paper) 1) 
 	(=(number-executedDObIOb-bake cookies minutes) 1) 
 	(=(number-executedDObIOb-butter bowl bowl) 1) 
 	(=(number-executedDObIOb-sugar bowl bowl) 1) 
 	(=(number-executedDObIOb-pan paper paper) 1) 
 	(=(number-executedIOb-add eggs) 1) 
 	(=(number-executedIOb-dough balls) 1) 
 	(finished)
)) 
 
)