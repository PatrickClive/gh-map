(define (domain handling)
(:requirements :typing :equality :fluents)
(:types place flight - object
        deboarding catering refueling boarding - agent)
(:predicates
  (myAgent ?a - deboarding))
(:functions
  (at ?d - deboarding) - (either place flight)
  (in ?f - flight) - place)
(:action Mover
 :parameters (?d - deboarding ?x ?y - place)
 :precondition (and (myAgent ?d) (= (at ?d) ?x))
 :effect (and (assign (at ?d) ?y)))
(:action Deboard
 :parameters (?f - flight ?d - deboarding ?p - place)
 :precondition (and (myAgent ?d) (= (at ?d) ?p) (=(in ?f)?p))
 :effect (assign (at ?d) ?f))
 )