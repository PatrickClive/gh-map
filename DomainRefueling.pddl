(define (domain handling)
(:requirements :typing :equality :fluents)
(:types place flight - object
        deboarding catering refueling boarding - agent)
(:predicates
  (myAgent ?a - refueling)
  )
(:functions
  (at ?r - refueling) - place
  (in ?f - flight) - place
  (performed ?f - flight) - (either deboarding catering refueling boarding)
  )
(:action moveR
 :parameters (?r - refueling ?f - flight ?d - deboarding ?x ?y - place)
 :precondition (and (myAgent ?r) (= (at ?r) ?x))
 :effect (and (assign (at ?r) ?y)))
(:action perfR
 :parameters (?f - flight ?r - refueling ?p - place)
 :precondition (and (myAgent ?r) (= (at ?r) ?p) (=(in ?f)?p) (not (= (performed ?f) ?r)))
 :effect (and (assign (performed ?f) ?r)))
 )
 

