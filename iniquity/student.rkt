#lang racket
;;(let-values ([(x y) (values 1 2)]) (+ x y)) ;; 3
;;(let-values ([(x) (values 1)]) (add1 x)) ;; 2
;;(let-values ([() (values)]) 7) ;; 7
;;(add1 (values 5)) ;; 6
;;(let ([x (values 5)]) (add1 x)) ;; 6
;;(add1 (values 1 2)) ;; err 
;;(let-values ([(x y) 2]) x);; err
;;(values) ;; 
;;(values 1 2 3) ;; 1 2 3
;;(values 1) ;; 1

(define (f x) (values x (+ x 1))) 
 (let-values ([(x y) (f 5)]) (cons x (cons y'())))