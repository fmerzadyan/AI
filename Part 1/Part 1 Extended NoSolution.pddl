(define (problem NoSolution)
    (:domain Part_1_Ext)
    (:objects
      a - Room
      c - Room
      b - Room
      e - Room
      ab - Path
      d - Room
      bc - Path
      cd - Path
      de - Path
      agent - Agent
      bc_key - Key
      cd_key - Key
      de_key - Key
      ab_key - Key
    )
    (:init
      (agent_inside agent a)
      (from_room ab a)
      (to_room ab b)
      (from_room bc b)
      (to_room bc c)
      (from_room cd c)
      (to_room cd d)
      (from_room de d)
      (to_room de e)
      (key_found_in bc_key b)
      (key_found_in cd_key c)
      (key_unlocks bc_key bc)
      (key_unlocks cd_key cd)
      (key_unlocks de_key de)
      (key_found_in de_key d)
      (locked ab)
      (locked bc)
      (locked cd)
    )
    (:goal
      (and
        (agent_inside agent e)
        (not (locked ab))
        (not (locked cd))
        (not (locked bc))
        (not (locked de))
        (taken ab_key)
        (taken bc_key)
        (taken cd_key)
      )
    )
)
