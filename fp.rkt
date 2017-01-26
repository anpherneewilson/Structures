(define (reverse-general L)
  (cond
    ((null? L) '()) ;if list is empty return empty list
    ((list? (car L)) (append (reverse-general (cdr L)) (list (reverse-general (car L)))))
    ;if the next element in the list is a list then reverse the contents of the nested list then continue
    (else (append (reverse-general (cdr L)) (list (car L)))) ;if not a nested list then reverse as normal
    )
  )
  
(define (sum-up-numbers-simple L)
  (cond
    ((null? L) 0) ;if list is empty the sum is 0
    ((number? (car L)) (+ (sum-up-numbers-simple (cdr L)) (car L))) ;if element is a number then add it to the running total
    (else (sum-up-numbers-simple (cdr L))) ;otherwise skip it
    )
  )
  
(define (sum-up-numbers-general L)
  (cond
    ((null? L) 0) ;if list is empty the sum is 0
    ((list? (car L)) (+ (sum-up-numbers-general (cdr L)) (sum-up-numbers-general (car L)))) ;if number is a list add numbers in the list to the total
    ((number? (car L)) (+ (sum-up-numbers-general (cdr L)) (car L))) ;if element is a number then add it to the running total
    (else (sum-up-numbers-general (cdr L))) ;otherwise skip it
    )
  )

;helper function to find minimum
(define (find-min L)
  (cond
    ((null? L) 0) ;if the list is empty return 0
    ((null? (cdr L)) (car L)) ;if only one element in list return the element
    ((< (car L) (find-min (cdr L))) (car L)) ;if the current element is less than the previous min replace it
    (else (find-min (cdr L))) ;else keep looking
    )
  )

;helper function to remove letters and numbers below n
(define (remove-unwanted-items L n)
  (cond
    ((null? L) '()) ;if list is empty return an empty list
    ((number? (car L)) (if (> (car L) n) (append (list (car L)) (remove-unwanted-items (cdr L) n)) (remove-unwanted-items (cdr L) n)))
    ;if element is a number that is greater than n then add it to the new list to be returned
    (else (remove-unwanted-items (cdr L) n)) ;otherwise skip it
    )
  )

(define (min-above-min L1 L2)
  (cond
    ((null? (remove-unwanted-items L1 0)) #f) ;if the first list is empty or contains only letters return false
    ((null? (remove-unwanted-items L2 0)) (find-min (remove-unwanted-items L1 0))) ;if the second list is empty or contains only letters return the minimum of the first list
    (else (find-min (remove-unwanted-items L1 (find-min (remove-unwanted-items L2 0)))))
    ;otherwise find the minimum of list 2 then remove all letters and numbers below that minimum and find the minimum of the new list
    )
  )