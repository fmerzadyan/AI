(define (domain Part_1_Ext)
    (:requirements :typing :negative-preconditions)
    (:types
      Room - object
      Agent - object
      Path - object
      Key - object
    )
    (:predicates
      (agent_inside ?age - Agent ?roo - Room)
      (key_unlocks ?key - Key ?path - Path)
      (key_found_in ?key - Key ?room - Room)
      (from_room ?pat - Path ?roo - Room)
      (to_room ?pat - Path ?roo - Room)
      (locked ?pat - Path)
      (taken ?key - Key)
    )
    (:action move
     :parameters (?self - Agent ?from - Room ?to - Room ?via - Path)
     :precondition 
       (and
         (agent_inside ?self ?from)
         (not (locked ?via))
         (from_room ?via ?from)
         (to_room ?via ?to)
       )
     :effect
       (and
         (agent_inside ?self ?to)
         (not (agent_inside ?self ?from))
       )
    )

    (:action collect
     :parameters (?self - Agent ?what - Key ?where - Room)
     :precondition 
       (and
         (agent_inside ?self ?where)
         (not (taken ?what))
         (key_found_in ?what ?where)
       )
     :effect
       (taken ?what)
    )

    (:action open
     :parameters (?path - Path ?key - Key)
     :precondition 
       (and
         (locked ?path)
         (key_unlocks ?key ?path)
       )
     :effect
       (not (locked ?path))
    )

)
