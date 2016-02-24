;; scheme tictactoe homework
;; name: Tim Chang
;; date: 2/10/16

(load-from-path "/afs/nd.edu/user37/cmc/Public/cse332_sp16/scheme_tictactoe/paradigms_ttt.scm")
(use-modules (ice-9 paradigms_ttt))

;; REPLACE WITH YOUR FUNCTIONS FROM A PREVIOUS HOMEWORK:
;;  greatest
(define greatest
  (lambda (tup)
    (cond
      ((null? tup) 0)
      ((null? (cdr tup)) (car tup))
      ((> (car tup) (car (cdr tup))) (greatest (cons (car tup) (cdr (cdr tup)))))
      (else (greatest (cdr tup)))
    )))

;;  positionof
(define positionof ;; position of n in a tup
  (lambda (n tup)
    (cond 
      ((eq? n (car tup)) 1)
      (else (+ 1 (positionof n (cdr tup))))
    )))

;;  value
(define value
  (lambda (p)
    (lambda (gs)
     (cond 
       ((win? p gs) 10)
       ((win? (other p) gs) -10)
       (else 0)
     ))))



;; MODIFY your sum* function for this assignment...
(define sum*-g
  (lambda (ttup f) ;; remember, the parameter f should be a FUNCTION
    (cond
	((null? ttup) 0)
	((null? (cdr ttup)) (f (car ttup))) ; leaf node
	(else (+ (sum*-g (car (cdr ttup)) f)
	         (sum*-g (cons (car ttup)
			       (cdr (cdr ttup))
			 )
			 f )))
    )))

;; MODIFY this function so that given the game tree 
;; (where the current situation is at the root),
;; it returns the recommendation for the next move
(define nextmove
  (lambda (p gt)
    ; car of the pick of the position of the greatest of the list of values of first children from the cdr of the ttup from the values of first children from the ttup 
    (car (pick (positionof (greatest (childvalue (cdr gt) p)) (childvalue (cdr gt) p)) (cdr gt)))
    ))
    ;(car gt)))


;; childvalue builds a list of values of subtree
(define childvalue
  (lambda (ttup p)
    (cond
      ((null? ttup) '())
      (else (cons (sum*-g (car ttup) (value p)) (childvalue (cdr ttup) p)))
      )))

;; onegametree is defined in paradigms_ttt
;; be sure to look at that file!

;; what is the current game situation?
(display "Current State:     ")
(display (car (onegametree)))
(display "\n")

;; test of nextmove, where should we go next?
(display "Recommended Move:  ")
(display (nextmove 'x (onegametree)))
(display "\n")

;; correct output:
;;   $ guile tictactoe.scm
;;   Current State:     (x o x o o e e x e)
;;   Recommended Move:  (x o x o o x e x e)

