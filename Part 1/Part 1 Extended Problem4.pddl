(define (problem Problem4)
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
      ab_key - Key
      af - Path
      f - Room
      bc_key - Key
      cd_key - Key
      cg - Path
      g - Room
      de_key - Key
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
      (key_unlocks ab_key ab)
      (from_room af a)
      (to_room af f)
      (from_room af f)
      (to_room af a)
      (key_found_in ab_key f)
      (key_found_in bc_key b)
      (key_unlocks bc_key bc)
      (key_unlocks cd_key cd)
      (key_found_in cd_key f)
      (from_room cg c)
      (to_room cg g)
      (key_found_in de_key g)
      (key_unlocks de_key de)
      (from_room cg g)
      (to_room cg c)
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
        (not (locked af))
        (taken ab_key)
        (taken bc_key)
        (taken cd_key)
        (taken de_key)
        (not (locked cg))
      )
    )
)
