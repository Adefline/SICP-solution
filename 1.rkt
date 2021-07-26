(define/contract (two-sum nums target)
  (-> (listof exact-integer?) exact-integer? (listof exact-integer?))
    (filter (lambda (n) (member (- target (list-ref nums n)) (remove (list-ref nums n) nums))) (build-list (length nums) values))
)
