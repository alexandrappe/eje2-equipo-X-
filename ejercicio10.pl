
% 2. DERIVACION SIMBOLICA

derivada(X, X, 1).
derivada(C, _, 0) :- number(C).
derivada(A + B, X, DA + DB) :-
    derivada(A, X, DA),
    derivada(B, X, DB).
derivada(A * B, X, A*DB + B*DA) :-
    derivada(A, X, DA),
    derivada(B, X, DB).
derivada(A - B, X, DA - DB) :-
    derivada(A, X, DA),
    derivada(B, X, DB).

% 5. 
?- derivada(x*x + 3*x + 2, x, D).
% D = x*1 + x*1 + (3*1 + x*0) + 0.

% 6.
?- derivada(x*x*x, x, D).
% D = x*x*1 + x*(x*1 + x*1) .

% 7. 
?- derivada(x*x - 4*x + 1, x, D).
% D = x*1 + x*1 - (4*1 + x*0) + 0

% 8.
?- derivada(x*x - 25*x + 13, x, D).
% D = x*1 + x*1 - (25*1 + x*0) + 0.

% Parte 3 - Evaluacion simbolica

% Caso 1: Si el término es la misma variable, se reemplaza por el valor.
evalua(X, X, V, V).

% Caso 2: Si el término es un número, se deja igual.
evalua(C, _, _, C) :- number(C).

% Caso 3: Si es una suma se evalúan ambos lados y se suman.
evalua(A + B, X, V, R) :-
    evalua(A, X, V, RA),
    evalua(B, X, V, RB),
    R is RA + RB.

% Caso 4: Si es una resta, se evalúan ambos lados y se restan.
evalua(A - B, X, V, R) :-
    evalua(A, X, V, RA),
    evalua(B, X, V, RB),
    R is RA - RB.

% Caso 5: Si es un producto, se evalúan ambos lados y se multiplican.
evalua(A * B, X, V, R) :-
    evalua(A, X, V, RA),
    evalua(B, X, V, RB),
    R is RA * RB.

/* 
ejercicio 9: Evalúe la siguiente expresión sustituyendo x = 3:
?- evalua(x*x + 3*x + 2, x, 3, R).
R= 20.
*/

/* 
ejercicio 10: Determine el resultado de la expresión:
?- evalua(x*x - 4*x + 4, x, 2, R).
R = 0.
*/

/* 
ejercicio 11: Combine evaluación y derivación: primero derive y luego evalúe el resultado en x = 2.
?- derivada(x*x + 3*x + 2, x, D), evalua(D, x, 2, R).
R = 0.
*/

% 4. Suma de fracciones simbólicas

suma(frac(A, B), frac(C, D), frac(N, M)) :-
    N is A*D + C*B,
    M is B*D.

resta(frac(A, B), frac(C, D), frac(N, M)) :-
    N is A*D - C*B,
    M is B*D.

% 12. Sume las siguientes fracciones simbólicas:
% ?- suma(frac(1,2), frac(1,3), R). Respuesta: R = frac(5, 6).   

% 13. Realice la suma siguiente y verifique el numerador y denominador del resultado:
% ?- suma(frac(2,5), frac(3,10), R). Respuesta: R = frac(35, 50).

% 14. Cree una regla adicional para restar fracciones y pruebe:
% ?- resta(frac(3,4), frac(1,2), R). Respuesta: R = frac(2, 8).

% 5. RESOLUCION SIMBOLICA SENCILLA


% Caso donde la variable aparece primero: X + N = M.
resuelve(X + N = M, X, V) :-
    number(N), number(M),
    V is M - N.
% Caso donde la variable aparece como segundo sumando: N + X = M.
resuelve(N + X = M, X, V) :-
    number(N), number(M),
    V is M - N.


15. Resuelva la ecuación:*/
/*?- resuelve(x + 3 = 7, x, V).*/

/*2 ?- resuelve(x + 3 = 7, x, V).
V = 4 ;
false.*/

/*16. Pruebe el caso donde la variable aparece al final:*/
%?- resuelve(5 + x = 10, x, V).

/*resuelve(5 + x = 10, x, V).
V = 5.*/

%17. Cree una ecuación nueva y resuélvala simbólicamente (de la forma x + N = M o N + x = M).

%?- resuelve(10 + x = 10, x, V).