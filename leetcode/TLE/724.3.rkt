(define/contract (pivot-index nums)
  (-> (listof exact-integer?) exact-integer?)
(let ((lis (filter-map (lambda (n) (if (= (apply + (drop-right nums (- (length nums) n))) (apply + (take-right nums (- (length nums) 1 n))))
n
#f
))
(range (length nums))
)))
(if (null? lis)
-1
(list-ref lis 0)
))
  )
