%parte 1 - amistades

amigo(juan,ana).
amigo(ana,juan).
amigo(maria, juan).
amigo(juan,maria).
amigo(pedro,sofia).
amigo(sofia, pedro).

% Actividades
% pedro y sofia trabajan juntos en la tienda
trabaja(pedro).
trabaja(sofia).
% maria y juan estudian en la biblioteca
estudia(maria).
estudia(juan).
%ana cocina todos los dias
cocina(ana).
%menos cuando esta cansada
descansa(ana).
%juan descansa los fines de semana
descansa(juan).
%pedro juega los sabados
juega(pedro).
% sofia estudia por las noches
estudia(sofia).
%maria descansa los domingos
descansa(maria).

rutina(estudia,lunes).
rutina(estudia,martes).
rutina(estudia,miercoles).
rutina(estudia,jueves).
rutina(estudia,viernes).
rutina(descansa,sabado).
rutina(descansa,domingo).
rutina(trabaja, lunes).
rutina(trabaja, martes).
rutina(trabaja, miercoles).
rutina(trabaja, jueves).
rutina(trabaja, viernes).
rutina(juega, sabado).
rutina(trabaja, sabado).
rutina(trabaja, domingo).
rutina(estudia,sabado).
rutina(estudia,domingo).
rutina(descansa,lunes).
rutina(descansa,martes).
rutina(descansa,miercoles).
rutina(descansa,jueves).
rutina(descansa,viernes).
rutina(cocina, lunes).
rutina(cocina, martes).
rutina(cocina, miercoles).
rutina(cocina, jueves).
rutina(cocina, viernes).
rutina(cocina, sabado).
rutina(cocina, domingo).

%Hermanos y primos.
hermano(pedro, ana).
hermano(ana, pedro).
primo(maria, sofia).
primo(sofia, maria).


%parte 2
% regla actividad(X) que sea verdadera si X realiza alguna actividad
actividad(X) :- trabaja(X); estudia(X); cocina(X); juega(X), X \= descansa.

%regla descansa (X) que sea verdadera si X no realiza otra actividad ese dias
descansa1(X) :-  descansa(X), X \= trabaja,  X \=estudia,  X \=cocina,  X \=juega.


parentesco(X, Y):-
    hermano(X, Y) ; hermano(Y, X) , X \= Y,
    fail.

parentesco(X, Y):-
    primo(X, Y) ; primo(Y, X) , X \= Y, 
    fail.

% Caso base: amistad directa
es_amigo(X,Y):-
    amigo(X,Y).

% Caso general: amistad indirecta
es_amigo(X,Y):-
    es_amigo(Z,X), es_amigo(Z,Y), !.

miembro(X, [X|_]).

miembro(X, [_|T]) :-
	miembro(X, T). 

% Caso base: la inversa de la lista vacía es []
invertir([], []).

% Caso general: invierto la cola y agrego la cabeza al final
invertir([H|T], R) :-
	invertir(T, RT),
	append(RT, [H], R).


% Nueva regla que use recursion
es_palindromo([H|T]) :-
    invertir([H|T],R),
    R == [H|T].






