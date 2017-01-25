(define (reverse-general L)
  (if
    (null? L)
    '()
    (list (reverse-general (cdr L)) (list (car L)))
    )
  )