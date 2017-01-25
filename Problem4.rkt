(define (find-min L)
  (cond
    ((null? L) 0)
    ((null? (cdr L)) (car L))
    ((< (car L) (find-min (cdr L))) (car L))
    (else (find-min (cdr L)))
    )
  )

(define (remove-unwanted-items L n)
  (cond
    ((null? L) '())
    ((integer? (car L)) (if (> (car L) n) (append (list (car L)) (remove-unwanted-items (cdr L) n)) (remove-unwanted-items (cdr L) n)))
    (else (remove-unwanted-items (cdr L) n))
    )
  )

