(define (problem Problem3)
    (:domain Part_1)
    (:objects
      agent - Agent
      a - Room
      c - Room
      b - Room
      e - Room
      d - Room
    )
    (:init
      (adjacent c e)
      (adjacent b d)
      (in agent a)
      (adjacent e d)
      (adjacent d e)
      (adjacent a c)
      (adjacent a b)
      (= (itemsCollected agent) 0)
      (= (items a) 0)
      (= (items c) 0)
      (= (items b) 1)
      (= (items e) 2)
      (= (items d) 0)
    )
    (:goal
      (= (itemsCollected agent) 3)
    )
)
