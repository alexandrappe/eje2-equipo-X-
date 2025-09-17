arbol_griego(arbol(caos, 
    arbol(gea, 
        arbol(cronos, 
            arbol(hera, 
                arbol(ares, nil, nil), 
                arbol(hefesto, nil, nil)), 
            arbol(poseidon, nil, nil)), nil), 
    arbol(urano, nil, 
        arbol(rea, 
            arbol(zeus, 
                arbol(dioniso, nil,nil), 
                arbol(artemisa,nil,nil)), 
            arbol(hades, nil,nil)
            )))).

%Recorridos
      %Inorden (Izq – Raíz – Der):
      inorden(nil, []). %Si el árbol está vacío (nil), el recorrido no tiene elementos → lista vacía [].
      inorden(arbol(X,Izq,Der), L) :-
      inorden(Izq,L1),
      inorden(Der,L2),
      append(L1,[X|L2],L).

      % Preorden (Raíz – Izq – Der)
      preorden(nil, []).
      preorden(arbol(X,Izq,Der), L) :-
      preorden(Izq, L1),
      preorden(Der, L2),
      append([X|L1], L2, L).

      % Postorden (Izq – Der – Raíz)
      postorden(nil, []). 
      postorden(arbol(X,Izq,Der), L) :-
      postorden(Izq, L1),
      postorden(Der, L2),
      append(L1, L2, L3), %Concatena listas
      append(L3, [X], L).

    