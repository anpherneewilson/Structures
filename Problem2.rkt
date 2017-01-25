(define (sum-up-numbers-simple L)
  (cond
    ((null? L) 0)
    ((integer? (car L)) (+ (car L) (sum-up-numbers-simple (cdr L))))
    (else (sum-up-numbers-simple (cdr L)))
    )
  )