(define (good-enough? guess x)
    (< (/ (abs (- (improve guess x) guess)) guess) 0.001))
    
(define (improve guess x)
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

