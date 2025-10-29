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

% -------------------------------------------------------------------
% 5. RESOLUCION SIMBOLICA SENCILLA
% -------------------------------------------------------------------
% Se resuelven ecuaciones lineales basicas de la forma X + N = M,
% es decir, se despeja la variable cuando aparece sumada a una constante.

% Caso donde la variable aparece primero: X + N = M.
resuelve(X + N = M, X, V) :-
    number(N), number(M),
    V is M - N.
% Caso donde la variable aparece como segundo sumando: N + X = M.
resuelve(N + X = M, X, V) :-
    number(N), number(M),
    V is M - N.

% Ejemplo:
% ?- resuelve(x + 3 = 7, x, V).
% V = 4.


/*🧠 5. Resolución simbólica sencilla
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