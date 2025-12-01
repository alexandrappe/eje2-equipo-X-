#lang racket

;; PARTE A
;; 1. Explica qué valor tendrá cada variable después de evaluar estas 
;; expresiones: 
;; (define a 5) (define b (+ a 3)) (define c (* b 2)) 
; a = 5, b= a+3 = 8, c = b*2=16

;¿Qué pasaría si se define (define a 10) después? ¿Cambia b?
; En este contexto no se puede redefinir, pero si se pudiera b
; no cambiaria dado que b usa la definicion de a que sabe en ese momento,
; y se convierte en su propio valor
; b olvida que en algun momento dependio de a

; 2. . Sustitución simbólica: Evalúa paso a paso (por sustitución):
; (define x 4) (define (doble n) (* 2 n))
; (define (suma3 m) (+ m 3)) (suma3 (doble x))
; x = 4
; funcion doble n = 2*n
; funcion suma3 m = m+3
; (suma3 (doble x))
; (suma3 (doble 4))
; (suma3 (8))
; (suma3 (+ 8 3))
; (11)

; 3. ¿Son equivalentes las siguientes definiciones? Explica tu respuesta.
; (define (cuadrado x) (* x x)) (define cuadrado (lambda (x) (* x x)))
; Si, funcionalmente son equivalentes, producen la misma funcion
; Ambas crean una funcion llamada cuadrado, pero una de ella utiliza
; la syntaxis lambda para asignar valor al nombre de cuadrado, la otra no

;; PARTE B
;4. . Área de un rectángulo: define dos variables base y altura, y
; una función (area base altura) que
;calcule el área.

(define (area base altura) (* base altura) )
(display (area 5 4))
(newline)

;5. . Conversión de grados: define una función 
;(celsius->fahrenheit c) que use F = (9/5)*C + 32.
(define (celsius->fahrenheit c)( + (* 9/5 c) 32))
(display (celsius->fahrenheit 30))
(newline)

;; 6. Precio con impuesto: crea una variable precio-base, 
;una función (iva monto) que calcule el 13%
;de un monto, y una función (precio-final p) que sume ambos.

(define precio-base 100)
(define (iva monto)(* 13/100 monto))
(define (precio-final p)(+ p (iva p)))
(display (precio-final precio-base))
(newline)

;; 7. Descuento encadenado: define (descuento10 p) y (iva13 p), 
;luego una función (precio-total p) que aplique ambas en orden.

(define (descuento10 p)(- p (* p 10/100)))
(define (iva13 p)(+ p (* p 13/100)))
(define (precio-total p)(iva13 (descuento10 p)))
(display (precio-total precio-base))
(newline)

;; PARTE C
;; 8. Explica por qué no 
;tiene sentido escribir (set! x (+ x 1)) en este paradigma.
; Dado que en el paradigma funcional se trata de tomar las variables
; como valores INMUTABLES, lo cual no se esta respetando en esta linea de
; codigo

;;  9. Función como valor: analiza el siguiente código y responde: 
; (define sumar (lambda (a b) (+ ab)))
; (define operar sumar) (operar 4 5) 
;a) ¿Qué papel cumple operar? b) ¿Por qué Racket permite esto?
; actua como otra variable para la funcion sumar (apunta a lo mismo)
; lo permite dado que en paradigmas funcionales las funciones son 
; valores


;10. Diferencia entre (define x 5) y (define (x) 5): explica conceptualmente.
; la primera es una variable y la segunda una funcion que 
; devuelve 5 siempre


; PARTE D
(define calcular-total precio-total)
(display (calcular-total 100))