(define/contract (merge intervals)
  (-> (listof (listof exact-integer?)) (listof (listof exact-integer?)))
(begin 
(define (cache index)
(let ((readuce (eval (car index)))(x (car (cdr index))))
(if (equal? (readuce x)  (readuce (readuce x)))
(readuce x)
(cache (list (car index) (readuce x))))))
(define (listsort intervals)
(letrec ((cont
(lambda (n)
(if (< (length intervals) 2)
intervals
(let ((intervals (sort intervals #:key car <)))
(let (
(a (car (list-ref intervals (- n 1))))
(b (car (cdr (list-ref intervals (- n 1)))))
(c (car (list-ref intervals n)))
(d (car (cdr (list-ref intervals n)))))
(if (< b c)
        (if (= n 1)
            (cons  (list-ref intervals 0) (cons (list-ref intervals n)
                (if (>= n (- (length intervals) 1))
                '()
                (cont (add1 n)))))
            (cons (list-ref intervals n)
                (if (>= n (- (length intervals) 1))
                '()
                (cont (add1 n))))
        )
(cond   
[   (and  (<= a c) (<= b d))
    (cons (list a d)
            (if (>= n (- (length intervals) 1))
            '()
            (cont (add1 n))))
]
[   (and (<= b d) (>= a c))
    (cons (list c d)
            (if (>= n (- (length intervals) 1))
            '()
            (cont (add1 n))))
]
[   (and (<= a c) (>= b d))
    (cons (list a b)
            (if (>= n (- (length intervals) 1))
            '()
            (cont (add1 n))))
]
[   (and (>= a c) (>= b d))
    (cons (list c b)
            (if (>= n (- (length intervals) 1))
            '()
            (cont (add1 n))))
]
)))))))) (cont 1)))
(cache (list listsort intervals)))
)

#|
?: literal data is not allowed;
 no #%datum syntax transformer is bound
  at: #<procedure:listsort>
  context...:
   solution.rkt:1:0: merge
   /usr/share/racket/collects/racket/contract/private/arrow-higher-order.rkt:375:33
   solution.rkt:84:2
   body of (submod "solution.rkt" main)
|#
;;这道题意料之外的输入比较多，我反复修改了几次条件，最终得到这个程序时，在自己的电脑上可以正常求出几个例子，但是在leetcode中发生意料之外的错误，不清楚原因
