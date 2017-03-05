(define (domain handling)
(:requirements :typing :equality :fluents)
(:types place flight - object
		deboarding catering refueling boarding - agent)
(:predicates
  (myAgent ?a - catering)
  )
(:functions
  (at ?c - catering) - place
  (in ?f - flight) - place
  (performed ?f - flight) - (either deboarding catering refueling boarding)
  )
(:action moveC
 :parameters (?c - catering ?x ?y - place)
 :precondition (and (myAgent ?c) (= (at ?c) ?x))
 :effect (and (assign (at ?c) ?y)))
(:action perfC
 :parameters (?f - flight ?c - catering ?p - place)
 :precondition (and (myAgent ?c) (= (at ?c) ?p) (=(in ?f)?p) (not (= (performed ?f) ?c)))
 :effect (and (assign (performed ?f) ?c)))
 )