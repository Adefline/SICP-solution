(define/contract (search-insert nums target)
      (-> (listof exact-integer?) exact-integer? exact-integer?)
        (cond
        ((> target (list-ref nums (- (length nums) 1))) (length nums))
        ((= target (list-ref nums (- (length nums) 1))) (- (length nums) 1))
        ((<= target (list-ref nums 0)) 0)
        (#t (letrec ((search (lambda (n)
        (cond
        ((= (list-ref nums n) target) n)
        ((and (< target (list-ref nums n)) (> target (list-ref nums (- n 1))))  n)
        ((< target (list-ref nums (- (length nums) 1))) (search(add1 n)))))))
        (search 1))))
      )
