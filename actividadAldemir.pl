esposo(esteban, mariela).
esposo(andres, clara).
esposo(rodolfo, teresa).
esposo(mateo,irene).
esposo(alonso, beatriz).
esposo(andres, catalina).

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
amigo(hector, ismael).
hijo(felipe, alonso).
hijo(catalina, alonso).
hijo(emilia, alonso).
hijo(felipe, beatriz).
hijo(catalina, beatriz).
hijo(emilia, beatriz).

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

decendiente(X,Y) :- hijo(X,Y).
decendiente(X,Y) :- hijo(X,Z), decendiente(Z,Y).

rivoriano(X) :- decendiente(X, esteban) ; X=mariela ; X=esteban.
duranianos(X) :- X=mateo; X=irene