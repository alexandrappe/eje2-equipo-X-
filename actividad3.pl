%  1. aritmeticos

rectangulo(X,Y, A, P) :-
    A is X * Y,
    P is +((X* 2), (Y*2)).

par_impar(N, Modulo) :-
    Modulo is (N mod 2),
    write(Modulo), 
    Modulo  =:= 0 ->  write('El numero es par') ;  write('El numero es impar')
    , nl.

% 2. Operadores Relacionales
% Mayor que
mayor(X, Y, Resultado) :-
   X > Y.
  
categoria_edad :-
write('Ingrese su edad: '), read(Num),
( Num >= 18
-> write('Es mayor de edad')
; write('Es menor de edad')
).

%Nota de aprobación
aprobo :-
    write('Ingrese su nota: '), read(Num),
    ( Num > 7
    -> write('Aprobo')
    ; write('No aprobo')
    ).



% 3. Operadores de Ligadura y Unificación
% Ejercicio 7: Unificación de estructuras - Crear predicado es_hermano/2.
hijo(clara, esteban).
hijo(clara, mariela).
hijo(rodolfo, esteban).
hijo(rodolfo, mariela).
hijo(ismael, esteban).
hijo(ismael, mariela).
hijo(sofia, clara).
hijo(sofia, andres).    

es_hermano(Persona1, Persona2):-
    ((hijo(Persona1, Papa), hijo(Persona2, Papa)) -> Bros = 'Son hermanos' ; Bros = 'no son hermanos'),
    write(Bros).

%---------------------------------------
% 4. Funciones Aritmeticas Predefinidas

% 10- Distancia entre dos puntos
distancia(X1,X2,Y1,Y2,D) :-
    D is sqrt((X2-X1)^2 + (Y2-Y1)^2).

% 11- Conversion de grados a radianes
grados_a_radianes(G, R) :-
    R is G * (pi / 180).

% 12: Promedios y extremos - Crear analisis/3.
promedio_y_extremo(X, Y, Z):-
    Promedio is (X + Y + Z) / 3,
    Maximo is max(max(X, Y), Z),
    Minimo is min(min(X, Y), Z),
    write('Promedio: '), write(Promedio), nl,
    write('Extremos: '), write(Minimo), write(', '), write(Maximo), nl.

% 13- Estadisticas (abs, round, floor, ceil)
% Valor absoluto
valor_absoluto(N, R) :-
    R is abs(N).

% Redondear
redondear(N, R) :-
    R is round(N).

% Floor
redondear_abajo(N, R) :-
    R is floor(N).

% Ceil
redondear_arriba(N, R) :-
    R is ceil(N).

    
hipotenusa(A,B,H) :- H is sqrt(A^2+B^2).

calculadora(Resultado) :- write('Seleccione una operacion:'), nl, write('1: suma'), nl, write('2: multiplicacion'),nl, write('3: division'),nl, write('4: resta'),nl, write('Cualquier otro para salir'), read(O), O < 5 ->  write('Ingrese el primer numero'), read(X),nl, write('Ingrese el segundo numero'), read(Y), ( O =:= 1 -> R is X+Y; ( O =:= 2 -> R is X*Y; ( O =:= 3 -> R is X/Y; ( O =:= 4 -> R is X-Y)))),write('El resultado es: '), write(R), calculadora(R).

notas(Nmax,Nmin,Sum,X) :- write('Ingrese la nota'),nl, write('Escriba 11 para salir'), nl, read(N), N =\ 11 -> (M is Nmax,M<N ->  M is N),(Mi is Nmin,Mi>N,Mi is N),(S is Sum+N ), F is X+1, write(M), write(Mi), write(S/f) notas(M,Mi,S,F).