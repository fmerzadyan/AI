(define (problem Problem2)
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
      (adjacent a c)
      (adjacent c e)
      (adjacent a b)
      (adjacent b d)
      (in agent a)
      (adjacent d e)
      (= (itemsCollected agent) 0)
      (= (items a) 0)
      (= (items c) 2)
      (= (items b) 1)
      (= (items e) 1)
      (= (items d) 1)
    )
    (:goal
      (= (itemsCollected agent) 3)
    )
)
