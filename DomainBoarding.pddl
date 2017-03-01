(define (domain handling)
(:requirements :typing :equality :fluents)
(:types place flight - object
		deboarding catering refueling boarding - agent)
(:predicates
  (myAgent ?a - boarding))
(:functions
  (at ?b - boarding) - (either place flight)
  (in ?f - flight) - place)
(:action Mover
 :parameters (?b - boarding ?x ?y - place)
 :precondition (and (myAgent ?b) (= (at ?b) ?x))
 :effect (and (assign (at ?b) ?y)))
(:action Boarding
 :parameters (?f - flight ?b - boarding ?p - place)
 :precondition (and (myAgent ?b) (= (at ?b) ?p) (=(in ?f)?p))
 :effect (assign (at ?b) ?f))
 )
  