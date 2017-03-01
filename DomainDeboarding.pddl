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
  (perfomedB ?f - flight) - boarding
  (perfomedC ?f - flight) - catering
  (perfomedD ?f - flight) - deboarding
  (perfomedR ?f - flight) - refueling
  )
(:action moveD
 :parameters (?d - deboarding ?f - flight ?x ?y - place)
 :precondition (and (myAgent ?d) (= (at ?d) ?x))
 :effect (and (assign (at ?d) ?y)))
(:action perD
 :parameters (?f - flight ?d - deboarding ?p - place)
 :precondition (and (myAgent ?d) (= (at ?d) ?p) (=(in ?f)?p) 
 				(not (= (performedD ?f) ?d)))
 :effect (and (performedD ?f) ?d))
 )