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

(define (min-above-min L1 L2)
  (cond
    ((null? (remove-unwanted-items L1 0)) #f)
    ((null? (remove-unwanted-items L2 0)) (find-min (remove-unwanted-items L1 0)))
    (else (find-min (remove-unwanted-items L1 (find-min (remove-unwanted-items L2 0)))))
    )
  )