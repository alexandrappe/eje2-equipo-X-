#lang racket
;; 1. Definí una función que reciba una 
; lista de números y devuelva cuántos son pares.

(define (contar-pares lista)
(length (filter even? lista)))
(displayln (contar-pares '(2 3 6 7 1 8)))

;; length mira el numero de objetos, 
;; filter usa una funcion para filtrar segun
;; esa funcion


;; Definí una función que eleve al cuadrado 
;; cada número de una lista y luego sume
;; todos los resultados.
(define (sumar-cuadrados list) 
    (foldl (lambda (x acc) (+ x acc))
    0
    (map  (lambda (x) (* x x)) list))
    
)
(displayln (sumar-cuadrados '(2 9 7)))

;; Creá una función que reciba una lista y una función f,
;; y devuelva una lista con:

(define (procesar-lista f lista)
    (displayln lista)
    (displayln (map f lista))
    (displayln(foldl (lambda (x acc) (+ x acc)) 
    0 
    (map f lista)))
    
     )
(procesar-lista (lambda (x) (* x 2)) '(2 9 7))

;; Definí una función que reciba una lista con números positivos 
;; y negativos, y devuelva el promedio de los números positivos.

(define (promedio-positivos lista) 
(let ([ps (filter (lambda (x)(> x 0 )) lista)])
(/ (foldl + 0 ps) (length ps)))
)

(displayln (promedio-positivos '(-2 3 -7 6 5 -1)) )

;; maximo-funcional
;; Usando solo foldl, definí una función que encuentre el máximo elemento
;; de una lista (sin usar la función incorporada max).

(define (maximo-funcional lista)
(foldl (lambda (x maxi) (if (> x maxi) x maxi)) 
 (first lista)
 lista))
(displayln (maximo-funcional '(-2 3 -7 6 5 -1)) )




;; Expresá la función “cuadrado de un número”
;; en Racket y en Prolog para comparar los paradigmas.
;; racket
(define (comparar-cuadrado x) (* x x))
(displayln (comparar-cuadrado 4) )
;; prolog
;; comparar-cuadrado(A, C) :-
;; C is A*A.

