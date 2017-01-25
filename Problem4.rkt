(define (find-min L)
  (cond
    ((null? L) 0)
    ((null? (cdr L)) (car L))
    ((< (car L) (find-min (cdr L))) (car L))
    (else (find-min L))
    )
  )
