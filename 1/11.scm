;;树形递归
(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1))
       (* 2 (f (- n 2)))
       (* 3 (f (- n 3))))))

;;迭代计算
(define (f2 n)
  (define (f-iter a b c cont)
    (if (< n 3)
        n
        (if (< cont n)
            (f-iter b c (+ c (* 2 b) (* 3 a)) (add1 cont))
            (+ c (* 2 b) (* 3 a)))))
    (f-iter 0 1 2 3))
