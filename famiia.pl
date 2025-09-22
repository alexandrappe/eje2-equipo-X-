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




% determinar si alguien es abuelo/abuela
abuelo(Abuelo,Nieto) :- hijo(Nieto,Padre), hijo(Padre,Abuelo).
abuela(Abuela,Nieto) :- hijo(Nieto,Padre), hijo(Padre,Abuela).