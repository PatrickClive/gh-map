(define (domain handling)
(:requirements :typing :equality :fluents)
(:types place flight agent - object
		deboarding catering refueling boarding - agent)
(:predicates
  (myAgent ?a - boarding)
  )
(:functions
  (at ?b - boarding) - place 
  (in ?f - flight) - place
  (performedb ?f - flight) - boarding
  (performedc ?f - flight) - catering
  (performedd ?f - flight) - deboarding
  (performedr ?f - flight) - refueling
  ) 
(:action moveB
 :parameters (?b - boarding ?c - catering ?f - flight ?d - deboarding ?r - refueling ?x ?y - place)
 :precondition (and (myAgent ?b) (= (at ?b) ?x) (not (= (performedb ?f) ?b)) (= (performedc ?f) ?c) (= (performedr ?f) ?r))
 :effect (and (assign (at ?b) ?y)))
(:action perB 
 :parameters (?f - flight ?b - boarding ?p - place) 
 :precondition (and (myAgent ?b) (= (at ?b) ?p) (=(in ?f)?p)) 
 :effect (and (assign (performedb ?f) ?b)))
 )
  