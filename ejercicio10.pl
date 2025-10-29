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
