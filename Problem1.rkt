(define (reverse-general L)
  (cond
    ((null? L) '())
    ((list? (car L)) (append (reverse-general (cdr L)) (list (reverse-general (car L)))))
    (else (append (reverse-general (cdr L)) (list (car L))))
    )
  )