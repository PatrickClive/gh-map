(define (domain handling)
(:requirements :typing :equality :fluents)
(:types place flight agent - object
        deboarding catering refueling boarding - agent)
(:predicates
  (myAgent ?a - refueling)
  )
(:functions
  (at ?r - refueling) - place
  (in ?f - flight) - place
  (perfomedB ?f - flight) - boarding
  (perfomedC ?f - flight) - catering
  (perfomedD ?f - flight) - deboarding
  (perfomedR ?f - flight) - refueling
  )
(:action moveR
 :parameters (?r - refueling ?f - flight ?d - deboarding ?x ?y - place)
 :precondition (and (myAgent ?r) (= (at ?r) ?x) (not (= (performedR ?f) ?r)) (= (performedD ?f) ?d))
 :effect (and (assign (at ?r) ?y)))
(:action perfR
 :parameters (?f - flight ?r - refueling ?p - place)
 :precondition (and (myAgent ?r) (= (at ?r) ?p) (=(in ?f)?p))
 :effect (and (performedR ?f) ?r))
 )
 

