(define (domain handling)
(:requirements :typing :equality :fluents)
(:types place flight - object
        deboarding catering refueling boarding - agent)
(:predicates
  (myAgent ?a - refueling))
(:functions
  (at ?r - refueling) - (either place flight)
  (in ?f - flight) - place)
(:action Mover
 :parameters (?r - refueling ?x ?y - place)
 :precondition (and (myAgent ?r) (= (at ?r) ?x))
 :effect (and (assign (at ?r) ?y)))
(:action Refuel
 :parameters (?f - flight ?r - refueling ?p - place)
 :precondition (and (myAgent ?r) (= (at ?r) ?p) (=(in ?f)?p))
 :effect (assign (at ?r) ?f))
 )
 

