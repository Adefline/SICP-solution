(define/contract (two-sum nums target)
  (-> (listof exact-integer?) exact-integer? (listof exact-integer?))
(car (filter-map (lambda (n) (let ((m (vector-member (- target(list-ref nums n)) (list->vector nums))))
(if m
(if (eq? m n)
#f
(list m n)
)
#f)
))
 (range (- (length nums) 1) -1 -1)))
  )
