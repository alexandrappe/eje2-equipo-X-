% 4. Funciones Aritmeticas Predefinidas
% 10- Distancia entre dos puntos
distancia(X1,X2,Y1,Y2,D) :-
    D is sqrt((X2-X1)^2 + (Y2-Y1)^2).

% 11- Conversion de grados a radianes
grados_a_radianes(G, R) :-
    R is G * (pi / 180).

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