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
  (perfomedB ?f - flight) - boarding
  (perfomedC ?f - flight) - catering
  (perfomedD ?f - flight) - deboarding
  (perfomedR ?f - flight) - refueling
  )
(:action moveC
 :parameters (?c - catering ?d - deboarding ?f - flight ?x ?y - place)
 :precondition (and (myAgent ?c) (= (at ?c) ?x) (not (= (performedC ?f) ?c)) (= (performedD ?f) ?d))
 :effect (and (assign (at ?c) ?y)))
(:action perfC
 :parameters (?f - flight ?c - catering ?p - place)
 :precondition (and (myAgent ?c) (= (at ?c) ?p) (=(in ?f)?p))
 :effect (and (performedC ?f) ?c))
 )