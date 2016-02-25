;; this is how to load external modules in scheme
(load-from-path "/afs/nd.edu/user37/cmc/Public/cse332_sp16/scheme_dailies/d1/paradigms_d1.scm")
(use-modules (ice-9 paradigms_d1))

;; Tim Chang

;; the list q
;; notice it has a ' in front of the list; that tells the interpreter to read
;; the list literally (e.g., as atoms, instead of functions)
(define q '(turkey (gravy) (stuffing potatoes ham) peas))

;; question 1
(display "question 1: ")
(display (atom? (car (cdr (cdr q)))))
(display "\n")
;; output:
;; (copy the output you saw here)
;; #f
;; explanation:
;; (use as many lines as necessary, just add more comments)
;; The answer is false. The functions evaluate from inside to outside. Thus, if we follow the progression of the 
;; interpreter, each state would look like:
;; (display (atom? (car (cdr (cdr q)))))
;; (display (atom? (car (cdr (((gravy) (stuffing potatoes ham) peas))))))
;; (display (atom? (car (((stuffing potatoes ham) peas)))))
;; (display (atom? ((stuffing potatoes ham)))
;; (display (#f))
;;
;; The cdr of the list q is - ( (gravy) (stuffing potatoes ham) peas )
;; The cdr of the resulting list is - ( (stuffing potatoes ham) peas )
;; The car of that list is - (stuffing potatoes ham)
;; The car is not atomic

;; question 2
(display "question 2: ")
(display (lat? (car (cdr (cdr q)))))
(display "\n")
;; output:
;; #t
;;
;; explanation:
;; As stated above, the result of the nested function calls of (car (cdr (cdr q))) returns a list -
;; (stuffing potatoes ham)
;; The result is a list of atomics


;; question 3
(display "question 3: ")
(display (cond ((atom? (car q)) (car q)) (else '())))
(display "\n")
;; output:
;; turkey
;;
;; explanation:
;; The conditional "cond" will evaluate the expressions in each clause supplied to it.
;; Here the first clause is an expression that calls the predicate atom? on the car of q
;; If this expression evaluates to true, the cond returns the car of q
;; The second clause is an else clause, which runs if the first expression is false.
;; It will return the empty list.
;; Because the car of q is an atom, the cond returns "turkey", and it is displayed to the screen
;;

