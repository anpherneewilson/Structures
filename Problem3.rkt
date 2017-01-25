(define (sum-up-numbers-general L)
  (cond
    ((null? L) 0)
    ((list? (car L)) (+ (sum-up-numbers-general (cdr L)) (sum-up-numbers-general (car L))))
    ((integer? (car L)) (+ (sum-up-numbers-general (cdr L)) (car L)))
    (else (sum-up-numbers-general (cdr L)))
    )
  )