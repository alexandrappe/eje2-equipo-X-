%personajes
personaje(shrek).
personaje(lord_farquaad).
personaje(burro).
personaje(fiona).
personaje(dragon).
personaje(hadas).
personaje(enanos).
personaje(lobos).
personaje(osos).
personaje(munecos_de_jengibre).

% vive_en
vive_en(shrek, pantano).
vive_en(fiona, pantano).
vive_en(burro, pantano).
vive_en(hadas, pantano).
vive_en(munecos_de_jengibre, pantano). % No me agarraba con la ñ :c
vive_en(enanos, pantano).
vive_en(lobos, pantano).
vive_en(osos, pantano).
vive_en(lord_farquaad, castillo).
vive_en(dragon, castillo_princesa). % Castillo donde estaba encerrada Fiona

% amigos
amigo(burro, shrek).
amigo(fiona, shrek).
amigo(shrek, burro).
amigo(shrek, fiona).

% rescata
rescata(shrek, fiona).
rescata(burro, fiona).

% desea
desea(shrek, paz).
desea(shrek, casarse_fiona).
desea(farquaad, rey).
desea(farquaad, casarse_fiona).

% transforma
transforma_en(fiona, ogro).

%valiente
valiente(shrek).

%feroz
feroz(shrek).
feroz(dragon).

% 1. ¿Quién vive en el pantano?
:- vive_en(X, pantano).

% 2. ¿Quienes son los amigos de Shrek?
amigos_shrek(X) :- amigo(shrek, X) ; amigo(X, shrek).
:- amigos_shrek(X).

% 3. ¿Quien desea casarse con Fiona?
:- desea(X, casarse_fiona).

% 4. ¿Shrek rescata a Fiona?
:- rescata(shrek, fiona).

% 5. ¿Que personaje se transforma por las noches?
:- transforma_en(X,_).

% 6. ¿Quien es valiente?
es_valiente(X) :- personaje(X), valiente(X).
:- es_valiente(X).

% 7. ¿Quien es feroz?
:- feroz(X).

% 8. ¿Que personajes llegaron al pantano expulsados del reino?
expulsados(X) :- vive_en(X, pantano), X \= shrek, X \= fiona, X \= burro.
:- expulsados(X).