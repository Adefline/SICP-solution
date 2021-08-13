(define (max-two-sum a b c)
        (cond 
         ((and (<= a b) (<= a c)) (+ b c))
         ((and (<= b c) (<= b a)) (+ a c))
         ((and (<= c a) (<= c b)) (+ a b))))
