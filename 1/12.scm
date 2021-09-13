(define (pascal n)                
          (define pascal-iter
            (lambda (lis i)
              (define list2 (append '(1) (map + (cdr lis) (reverse (cdr (reverse lis)))) '(1)))
              (begin
                (display lis)
                (newline)
                (if (= i n)
                    (newline)
                    (pascal-iter list2 (+ i 1))))))
          (pascal-iter '(1) 0))
