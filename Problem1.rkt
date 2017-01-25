(define (reverse-general L)
  (cond
    ((null? L) '())
    (list (reverse-general (cdr L)) (list (car L)))
    )
  )