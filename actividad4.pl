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

es_amigo(X,Y):-
    amigo(X,Y).

es_amigo(X,Y):-
    es_amigo(Z,X), es_amigo(Z,Y), !.