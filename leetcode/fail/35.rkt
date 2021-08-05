(define/contract (search-insert nums target)
  (-> (listof exact-integer?) exact-integer? exact-integer?)
(if (member target nums)
(- (length nums) (length (member target nums)))
(letrec ((search (lambda (n)
        (cond  
        ((= n (length nums)) (display n))
        ((< target (list-ref nums n)) (display n))
            
        (else (search (add1 n)))
        )
        )))
(search 0)))
)

;;题目要求必须使用时间复杂度为 O(log n)的算法，一般测试可通过，可能因这个原因失败
#|
Line 1: Char 19: search-insert: broke its own contract
  promised: exact-integer?
  produced: #<void>
  in: the range of
      (->
       (listof exact-integer?)
       exact-integer?
       exact-integer?)
  contract from: (function search-insert)
  blaming: (function search-insert)
   (assuming the contract is correct)
  context...:
   /usr/share/racket/collects/racket/contract/private/blame.rkt:347:0: raise-blame-error
   /usr/share/racket/collects/racket/contract/private/arrow-higher-order.rkt:375:33
   solution.rkt:19:2
   body of (submod "solution.rkt" main)
   |#
