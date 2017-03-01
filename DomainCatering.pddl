(define (domain handling)
(:requirements :typing :equality :fluents)
(:types place flight - object
		deboarding catering refueling boarding - agent)
(:predicates
  (myAgent ?a - catering))
(:functions
  (at ?c - catering) - (either place flight)
  (in ?f - flight) - place)
(:action Mover
 :parameters (?c - catering ?x ?y - place)
 :precondition (and (myAgent ?c) (= (at ?c) ?x))
 :effect (and (assign (at ?c) ?y)))
(:action Cater
 :parameters (?f - flight ?c - catering ?p - place)
 :precondition (and (myAgent ?c) (= (at ?c) ?p) (=(in ?f)?p))
 :effect (assign (at ?c) ?f))
 )