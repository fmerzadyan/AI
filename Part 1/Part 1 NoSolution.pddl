(define (problem NoSolution)
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
      (adjacent e d)
      (adjacent a c)
      (adjacent a b)
      (adjacent c b)
      (in agent d)
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
