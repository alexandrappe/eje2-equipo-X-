% Declaramos el predicado empleado/2 como dinámico.
:- dynamic empleado/3.

empleado('Ana', 'contabilidad', '900').
empleado('Luis', 'Sistemas', '1200').
empleado('Sofia', 'marketing', '1100').


% Consultar todos los empleados registrados
listar_empleados :-
    writeln('--- Lista de empleados ---'),
    empleado(Nombre, Depto, Salario),
    format('Nombre: ~w | Depto: ~w | Salario: $~w.~n', [Nombre, Depto, Salario]), % Se muestra el nombre y depto del empleado
    fail. %fail. se usa para forzar que Prolog explore todas las combinaciones y liste todo antes de terminar.
listar_empleados.  % Finaliza el backtrackinga

%listar_empleados.

%/////////////////////////////////////////////////////////////////////////////////////

% Agregar nuevo empleado
agregar_empleado(Nombre, Depto, Salario) :-
    asserta(empleado(Nombre, Depto, Salario)),
    format('Se agregó a: ~w en el departamento ~w con salario $~w.~n', [Nombre, Depto, Salario]).

%//////////////////////////////////////////////////////////////////////////////////////

% Eliminar un empleado por nombre
eliminar_empleado(Nombre) :-
    retract(empleado(Nombre, Depto, Salario)),
    format('Se eliminó a ~w del departamento ~w (salario $~w).~n', [Nombre, Depto, Salario]), % ~w Imprime un término
    !. % evita múltiples eliminaciones

% Eliminar todos los empleados
eliminar_todos :-
    retractall(empleado(_, _)),
    writeln('Todos los empleados han sido eliminados de la base.').

% eliminar_empleado('Luis').

%////////////////////////////////////////////////////////////////////////////////

% Actualizar el depto de un empleado
actualizar_depto(Nombre, NuevoDepto, NuevoSalario) :-
    retract(empleado(Nombre, _, _)),  % elimina el hecho antiguo
    assert(empleado(Nombre, NuevoDepto, NuevoSalario)),  % inserta el nuevo
    format('Datos actualizados: ~w -> Depto: ~w | Salario: $~w.~n', [Nombre, NuevoDepto, NuevoSalario]),
    !. % evita múltiples actualizaciones

%//////////////////////////////////////////////////////////////////////////////////////

% Agregar solo si no existe
agregar_unico(Nombre, Depto, Salario) :-
    (   empleado(Nombre, Depto, Salario)
    ->  format('El empleado ~w ya está inscrito en ~w con salario $~w.~n', [Nombre, Depto, Salario])
    ;   assert(empleado(Nombre, Depto, Salario)),
        format('Se ha agregado a ~w en el depto ~w con salario $~w. ~n', [Nombre, Depto, Salario])
    ).

%actividad replicar la siguiente salida en la consola:
% ==========================================
% 📘 SISTEMA DE EMPLEADOS EN PROLOG
% Simulación de una sesión interactiva con el menú principal
% ==========================================

% Inicio del sistema
?- main.
% 📘 SISTEMA DE EMPLEADOS INICIADO
% ========= MENÚ =========
% 1. Listar empleados
% 2. Agregar empleado
% 3. Eliminar empleado
% 4. Actualizar empleado
% 5. Agregar con validación
% 6. Eliminar todos
% 0. Salir
% ========================
% Seleccione una opción: 1.

% --- LISTA DE EMPLEADOS ---
% Nombre: Ana | Depto: contabilidad | Salario: $900
% Nombre: Luis | Depto: sistemas | Salario: $1200
% Nombre: Sofía | Depto: marketing | Salario: $1100
% ----------------------------

% Seleccione una opción: 2.
% Nombre: 'Carlos'.
% Departamento: 'ventas'.
% Salario: 950.
% ✅ Se agregó a Carlos en el departamento ventas con salario $950.

% Seleccione una opción: 4.
% Nombre: 'Luis'.
% Nuevo departamento: 'infraestructura'.
% Nuevo salario: 1400.
% 🔁 Datos actualizados: Luis → Depto: infraestructura | Salario: $1400

% Seleccione una opción: 3.
% Nombre a eliminar: 'Ana'.
% 🗑️  Se eliminó a Ana del departamento contabilidad (salario $900).

% Seleccione una opción: 1.
% --- LISTA DE EMPLEADOS ---
% Nombre: Luis | Depto: infraestructura | Salario: $1400
% Nombre: Sofía | Depto: marketing | Salario: $1100
% Nombre: Carlos | Depto: ventas | Salario: $950
% ----------------------------

% Fin de la simulación de sesión del sistema de empleados
% ==========================================