(define (domain handling)
(:requirements :typing :equality :fluents)
(:types place flight - object
		deboarding catering refueling boarding - agent)
(:predicates
  (myAgent ?a - boarding)
  )
(:functions
  (at ?b - boarding) - place 
  (in ?f - flight) - place
  (performed ?f - flight) - (either deboarding catering refueling boarding)  
  ) 
(:action moveB
 :parameters (?b - boarding ?x ?y - place)
 :precondition (and (myAgent ?b) (= (at ?b) ?x))
 :effect (and (assign (at ?b) ?y)))
(:action perB 
 :parameters (?f - flight ?b - boarding ?p - place) 
 :precondition (and (myAgent ?b) (= (at ?b) ?p) (=(in ?f)?p) (not (= (performed ?f) ?b))) 
 :effect (and (assign (performed ?f) ?b)))
 )
  