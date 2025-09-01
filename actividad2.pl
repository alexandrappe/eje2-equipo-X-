estudiante(kelvin).
estudiante(raul).
estudiante(florence).
estudiante(mauricio).
estudiante(melissa).

:-\+ estudiante(ellacuria).

primer_estudiante(E):-estudiante(E),!.

mostrar_estudiantes :-
    estudiante(Nombre),
    write('Estudiante: '), write(Nombre), nl,
    fail.
mostrar_estudiantes.

saludo_usuario :-
    write('Ingrese su nombre: '), read(N),
    (   estudiante(N)
    ->  write('hola '), write(N) 
    ;   write('quien chota sos?')
    ).
    fail.

% Negacion: determinar si ellacuria no es estudiante (usando negacion) - solo consulta
% Corte: obtener solo el primer estudiante de la lista - regla y consulta
% Fallo: listar todos los estudiantes usando fail - una regla con condiciones (3 parametros y 1 opcional) y un paro
% Entrada/Salida: pedir al usuario que ingrese un nombre y verificar si es estudiante - una condicion, recibir un mensaje, leer el valor, la condicion y escribir un mensaje (hola)