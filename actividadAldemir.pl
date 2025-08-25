% Esposos y esposas
esposo(esteban, mariela).
esposo(andres, clara).
esposo(rodolfo, teresa).
esposo(mateo,irene).
esposo(alonso, beatriz).
esposo(andres, catalina).

% Hijos
hijo(clara, esteban).
hijo(clara, mariela).
hijo(rodolfo, esteban).
hijo(rodolfo, mariela).
hijo(ismael, esteban).
hijo(ismael, mariela).
hijo(sofia, clara).
hijo(sofia, andres).
hijo(lucas, rodolfo).
hijo(lucas, teresa).
hijo(martina, rodolfo).
hijo(martina, teresa).
hijo(felipe, alonso).
hijo(catalina, alonso).
hijo(emilia, alonso).
hijo(felipe, beatriz).
hijo(catalina, beatriz).
hijo(emilia, beatriz).

% Amistades
amigo(hector, ismael).

% Profesiones
profesion(hector,herrero).
profesion(teresa, tejedora).
profesion(clara,maestra).
profesion(catalina, curandera).
profesion(felipe, explorador).
profesion(emilia, ceramista).
profesion(mateo, agricultor).
profesion(irene, vender_leche).
profesion(irene, vender_queso).
profesion(irene, criar_cabras).

% Descendientes
decendiente(X,Y) :- hijo(X,Y).
decendiente(X,Y) :- hijo(X,Z), decendiente(Z,Y).

%Festevidades
festeja(rivoria, la_fiesta_del_rio).
festeja(montelar, la_ceremonia_de_la_luna).
festeja(durania, feria_del_grano).

%creencias
venera(rivoria, espiritu_del_agua).
venera(montelar, espiritu_de_la_montanna).
venera(durania, espiritu_de_la_tierra).

% Aldeas
rivoriano(X) :- decendiente(X, esteban) ; X=mariela ; X=esteban.
duranianos(X) :- X=mateo; X=irene.