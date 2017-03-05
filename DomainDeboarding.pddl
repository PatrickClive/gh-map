(define (domain handling)
(:requirements :typing :equality :fluents)
(:types place flight - object
        deboarding catering refueling boarding - agent)
(:predicates
  (myAgent ?a - deboarding)
  )
(:functions
  (at ?d - deboarding) - place
  (in ?f - flight) - place
  (performed ?f - flight) - (either deboarding catering refueling boarding)  
  )
(:action moveD
 :parameters (?d - deboarding ?x ?y - place)
 :precondition (and (myAgent ?d) (= (at ?d) ?x))
 :effect (and (assign (at ?d) ?y)))
(:action perD
 :parameters (?f - flight ?d - deboarding ?p - place)
 :precondition (and (myAgent ?d) (= (at ?d) ?p) (=(in ?f)?p) (not (= (performed ?f) ?d)))
 :effect (and (assign (performed ?f) ?d)))
 )