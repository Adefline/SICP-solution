(define/contract (pivot-index nums)
  (-> (listof exact-integer?) exact-integer?)
(letrec ((lis (lambda (n left right) 
(if (= n (- (length nums) 1))
(if (zero? left)
n
-1)
(if (= left right)
n
(lis (add1 n) (+ left (list-ref nums n)) (- right (list-ref nums (add1 n)))))))))
(lis 0 0 (- (apply + nums) (list-ref nums 0)))
)
)

;;vct版，大幅降低用时。
(define/contract (pivot-index nums)
  (-> (listof exact-integer?) exact-integer?)
(let ((vct (list->vector nums)) (len (length nums)))
(letrec ((lis (lambda (n left right) 
(if (= n (- len 1))
(if (zero? left)
n
-1)
(if (= left right)
n
(lis (add1 n) (+ left (vector-ref vct n)) (- right (vector-ref vct (add1 n)))))))))
(lis 0 0 (- (apply + nums) (vector-ref vct 0)))
))
)
