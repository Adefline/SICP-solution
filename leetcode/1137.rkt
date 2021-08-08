(define/contract (tribonacci n)
  (-> exact-integer? exact-integer?)
(cond
[(= n 0) 0]
[(< n 3) 1]
[(< 2 n)
(letrec ((tribon
(lambda (n tn0 tn1 tn2 tn3)
(if (= n 3)
tn3
(tribon (- n 1) tn1 tn2 tn3 (+ tn1 tn2 tn3)))
)))
(tribon n 0 1 1 2))
]
)
  )
