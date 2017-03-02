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
  (performedb ?f - flight) - boarding
  (performedc ?f - flight) - catering
  (performedd ?f - flight) - deboarding
  (performedr ?f - flight) - refueling
  )
(:action moveR
 :parameters (?r - refueling ?f - flight ?d - deboarding ?x ?y - place)
 :precondition (and (myAgent ?r) (= (at ?r) ?x) (not (= (performedr ?f) ?r)) (= (performedd ?f) ?d))
 :effect (and (assign (at ?r) ?y)))
(:action perfR
 :parameters (?f - flight ?r - refueling ?p - place)
 :precondition (and (myAgent ?r) (= (at ?r) ?p) (=(in ?f)?p))
 :effect (and (assign (performedr ?f) ?r)))
 )
 

