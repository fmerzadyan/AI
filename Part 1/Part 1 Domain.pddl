(define (domain Part_1)
    (:requirements :typing :fluents)
    (:types
      Room - object
      Agent - object
    )
    (:predicates
      (in ?age - Agent ?roo - Room)
      (adjacent ?roo - Room ?roo1 - Room)
    )
    (:functions
      (items ?roo - Room)
      (itemsCollected ?age - Agent)
    )
    (:action move
     :parameters (?self - Agent ?from - Room ?to - Room)
     :precondition 
       (and
         (in ?self ?from)
         (adjacent ?from ?to)
       )
     :effect
       (and
         (in ?self ?to)
         (not (in ?self ?from))
       )
    )

    (:action collect
     :parameters (?self - Agent ?currentRoom - Room)
     :precondition 
       (in ?self ?currentRoom)
     :effect
       (and
         (increase (itemsCollected ?self) (items ?currentRoom))
         (assign (items ?currentRoom) 0)
       )
    )

)
