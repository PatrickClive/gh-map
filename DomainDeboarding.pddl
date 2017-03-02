(define (domain handling)
(:requirements :typing :equality :fluents)
(:types place flight agent - object
        deboarding catering refueling boarding - agent)
(:predicates
  (myAgent ?a - deboarding)
  )
(:functions
  (at ?d - deboarding) - place
  (in ?f - flight) - place
  (performedb ?f - flight) - boarding
  (performedc ?f - flight) - catering
  (performedd ?f - flight) - deboarding
  (performedr ?f - flight) - refueling
  )
(:action moveD
 :parameters (?d - deboarding ?f - flight ?x ?y - place)
 :precondition (and (myAgent ?d) (= (at ?d) ?x))
 :effect (and (assign (at ?d) ?y)))
(:action perD
 :parameters (?f - flight ?d - deboarding ?p - place)
 :precondition (and (myAgent ?d) (= (at ?d) ?p) (=(in ?f)?p) 
 				(not (= (performedd ?f) ?d)))
 :effect (and (assign (performedd ?f) ?d)))
 )