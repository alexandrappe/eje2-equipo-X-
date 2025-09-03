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

    