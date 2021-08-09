(define/contract (nth-super-ugly-number n primes)
  (-> exact-integer? (listof exact-integer?) exact-integer?)
(list-ref (sort 
(letrec ((group (lambda (n primes)
(if (zero? n)
primes
(group (- n 1) (append primes
(map * primes primes)
(map (lambda (n1 n2) (* n1 n2)) primes (append (cdr primes) (list (list-ref primes 0))))
(list 1)))))))
(group n primes))
<) (- n 1))
  )
;;程序超时且可能无法正常输出，无法有效设置最小计算
