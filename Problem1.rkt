(define (reverse-general L)
  (cond
    ((null? L) '())
    (cons ((reverse-general L) (car L)))
    )
  )