(define (reverse-general L)
  (if
    (null? L)
    '()
    (append (reverse-general (cdr L)) (list (car L)))
    )
  )