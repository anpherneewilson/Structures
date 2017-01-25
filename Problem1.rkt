(define (reverse-general L)
  (cond
    ((null? L) '())
    (cons ((reverse-general (cdr L)) (car L)))
    )
  )