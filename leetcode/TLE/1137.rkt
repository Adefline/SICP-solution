(define/contract (tribonacci n)
  (-> exact-integer? exact-integer?)
(cond
[(= n 0) 0]
[(< n 3) 1]
[(< 2 n) (+ (tribonacci (- n 1)) (tribonacci (- n 2)) (tribonacci (- n 3)))]
)
  )
