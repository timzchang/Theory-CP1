(define rember
 (lambda (a lat)
    (cond
            ((null? lat) '())
	          ((eq? (car lat) a) (cdr lat))
		        (else (cons (car lat) (rember a (cdr lat)))))))

(display (rember 'x '(t o m a x t x  o)))
(display "\n")
