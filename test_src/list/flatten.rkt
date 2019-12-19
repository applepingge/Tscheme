(define (foldr f x0 l) (match l
    [(Cons x xs) (f x (foldr f x0 xs))]
    [(Nil) x0]
))

(define (concat x y) (foldr cons y x))

(define (flatten x)
        (foldr (lambda (l r) (concat l r))
               null x))

(define (length x) (foldr (lambda (l r) (+ r 1)) 0 x))

(define nest '((1 2 3) (2 3) (1)))

(println (flatten nest))
(println (length (flatten nest)))