esposo(esteban, mariela).
esposo(andres, clara).
esposo(rodolfo, teresa).

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

decendiente(X,Y) :- hijo(X,Y).
decendiente(X,Y) :- hijo(X,Z), decendiente(Z,Y).

rivoriano(X) :- decendiente(X, esteban) ; X=mariela ; X=esteban.