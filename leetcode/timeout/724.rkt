(define/contract (pivot-index nums)
  (-> (listof exact-integer?) exact-integer?)
(let ((lis 
(filter (lambda (x) (> x -1)) 
(map (lambda (n)
        (if (let ((left
            (for/sum ((i (range  n)))
                (list-ref nums i)))
            (right
            (for/sum ((i (range (+ n 1) (length nums))))
                (list-ref nums i))))
        (eq? left right))
        n
        -1
        )
     )
(range (length nums))))))
(if (null? lis)
-1
(list-ref lis 0)))
)
