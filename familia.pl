vive_en(carlos, ciudad).
vive_en(ana, valle_verde).
vive_en(lucia,capital).
vive_en(ricardo,capital).
vive_en(miguel,valle_verde).
vive_en(doña_carmen,valle_verde).
vive_en(don_felipe,ciudad).

trabaja_en(carlos, empresa_contructora).
trabaja_en(ana, escuela_secundaria_valle_verde).
trabaja_en(lucia, estudiante).
trabaja_en(laura, biblioteca).
trabaja_en(miguel, parcela).

padre(ernesto, carlos).
padre(ernesto, ana).
padre(ernesto, lucia).
padre(carlos,mateo).
padre(carlos,valeria).
padre(ricardo, daniel).
padre(miguel, fernanda).
padre(felipe, joaquin).

madre(teresa, carlos).
madre(teresa, ana).
madre(teresa, lucia).
madre(sofia, mateo).
madre(sofia, valeria).
madre(ana, andres).
madre(laura, daniel).
madre(rosa, fernanda).

hijo(carlos, ernesto).
hijo(carlos, teresa).
hijo(ana, ernesto).
hijo(ana, teresa).
hijo(lucia, ernesto).
hijo(lucia, teresa).
hijo(mateo, carlos).
hijo(mateo, sofia).
hijo(valeria, carlos).
hijo(valeria, sofia).
hijo(daniel, ricardo).
hijo(daniel, laura).
hijo(fernanda, rosa).
hijo(fernanda, miguel).
hijo(joaquin, felipe).

%primos
primo(daniel,lucia).
primo(daniel,carlos).
primo(daniel,ana).
primo(andres,mateo).
primo(andres,valeria).
primo(andres,mateo).
primo(fernanda,andres).
primo(fernanda,mateo).
primo(fernanda,valeria).

amigo(carlos,ricardo).
amigo(daniel,mateo).
amigo(laura,valeria).
amigo(carmen,teresa).
amigo(isabel, fernanda).
amigo(felipe, miguel).
amigo(joaquin, andres).

% casados 
casado_con(ernesto, teresa).
casado_con(carlos, sofia).
casado_con(ricardo, laura).
casado_con(miguel, rosa).

% abuelo
% determinar si alguien es abuelo/abuela
abuelo(Abuelo,Nieto) :- hijo(Nieto,Padre), hijo(Padre,Abuelo).
abuela(Abuela,Nieto) :- hijo(Nieto,Padre), hijo(Padre,Abuela).
abuelo(Abuelo,Nieto) :- hijo(Nieto,Madre), hijo(Madre,Abuelo).
abuela(Abuela,Nieto) :- hijo(Nieto,Madre), hijo(Madre,Abuela).
%4 Definir la relación de primos/as.

primo(X,Y):-primo(Y,X).
amigo(X,Y):-amigo(Y,X).

%2.5 Definir amigos de un primo.

amigo_de_primo(X, Y):- amigo(X, Z) , primo(Z, Y).

hermano(X, Y):- 
    (hijo(X, Z), hijo(Y, Z)), X \= Y.


%consultas
% 2- Quien es el abuelo de mateo
:- abuelo(X, mateo).
% respuesta= ernesto

% 5- Consultar si Mateo y Daniel son amigos
:- amigo(mateo, daniel).
% respuesta= true

