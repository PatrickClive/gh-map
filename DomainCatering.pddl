(define (domain handling)
(:requirements :typing :equality :fluents)
(:types place flight agent - object
		deboarding catering refueling boarding - agent)
(:predicates
  (myAgent ?a - catering)
  )
(:functions
  (at ?c - catering) - place
  (in ?f - flight) - place
  (performedb ?f - flight) - boarding
  (performedc ?f - flight) - catering
  (performedd ?f - flight) - deboarding
  (performedr ?f - flight) - refueling
  )
(:action moveC
 :parameters (?c - catering ?d - deboarding ?f - flight ?x ?y - place)
 :precondition (and (myAgent ?c) (= (at ?c) ?x) (not (= (performedc ?f) ?c)) (not (= (performedd ?f) ?d)))
 :effect (and (assign (at ?c) ?y)))
(:action perfC
 :parameters (?f - flight ?c - catering ?p - place)
 :precondition (and (myAgent ?c) (= (at ?c) ?p) (=(in ?f)?p))
 :effect (and (assign (performedc ?f) ?c)))
 )