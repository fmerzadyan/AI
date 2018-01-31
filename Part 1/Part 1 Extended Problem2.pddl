(define (problem Problem2)
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
      bc_key - Key
      de_key - Key
      agent - Agent
      ae - Path
      ab_key - Key
    )
    (:init
      (agent_inside agent a)
      (key_unlocks bc_key bc)
      (key_unlocks de_key de)
      (key_found_in de_key d)
      (from_room ab a)
      (to_room ab b)
      (from_room bc b)
      (to_room bc c)
      (from_room cd c)
      (to_room cd d)
      (from_room de d)
      (to_room de e)
      (from_room ae a)
      (to_room ae e)
      (to_room ae a)
      (from_room ae e)
      (key_found_in bc_key a)
      (key_unlocks ab_key ab)
      (key_found_in ab_key e)
      (locked ab)
      (locked bc)
      (locked de)
      (locked ae)
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
        (taken de_key)
      )
    )
)
