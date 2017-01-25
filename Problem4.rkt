(define (find-min L)
  (cond
    ((null? L) 0)
    ((null? (cdr L)) (car L))
    ((< (car L) (find-min (cdr L))) (car L))
    (else (find-min (cdr L)))
    )
  )

(define (remove-non-numbers L)
  (cond
    ((null? L) '())
    ((integer? (car L)) (append (car L) (remove-non-numbers (cdr L))))
    (else (remove-non-numbers (cdr L)))
    )
  )