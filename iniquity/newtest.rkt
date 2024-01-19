#lang racket
;(values 1 2 3 4)
;(let-values ([(xy) (values 123)]) (add1 xy))
;(add1 (values 24));
;(values)

;;(let-values ([(l w f j e z) (values 1 2 3 4 5 (let-values ([(A B) (values 40 1)]) (values (+ A B))) )]) (values e)) ;; should be 5

;(let-values ([(one two) (values 40  (let-values ([(first second) (values 40 1)]) (values (+ first second)))   )]) (values (+ one two)))



;(values ((lambda (one two) (+ one two)) 1 2 ))



;(let ((xyz (values 123))) (add1 xyz))
;(values 264 1223 1123 1 423 53 23 (add1 (values 5)) (let ((x (values 41))) (add1 x)))




;(let-values ([(aa bb cc dd ee ff) (values 1 2 3 4 5 (let ((xy (values 41))) (add1 xy)))]) (values cc dd aa ff))

;;(let-values ([(first second third) (values 40  (let-values ([(aaa bvb ccc) (values 220 2 1)]) (values aaa)) 43  )]) second)





;(let-values ([() (values 231 22)]) 77) ; THIS SHOULD THROW AN ERROR