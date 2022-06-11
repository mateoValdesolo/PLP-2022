numero(0).
numero(succ(X)) :- numero(X).

/* Concatenacion */
concat([], L, L).
concat([X|L], L2, [X|L3]) :- concat(L,L2,L3).

/* Pertenencia de un elemento */
pertenece(X, [X|L]).
pertenece(X, [Y|L]) :- pertenece(X,L).

/* Cantidad de ocurrencias de un elemento */
ocurr(X,[],0).
ocurr(X,[X|L], R) :- ocurr(X,L,S), R is S+1.
ocurr(X,[Y|L],R) :- ocurr(X,L,R).

/* Eliminacion de la primera ocurrencia de un elemento */
eliminarOcurrencia(X,[],[]).
eliminarOcurrencia(X,[X|L1], L1).
eliminarOcurrencia(X,[Y|L1],[Y|L2]) :- eliminarOcurrencia(X,L1,L2).

/* Sustitucion de la primera ocurrencia de un elemento por otro */
sustitucion(X,Z,[],[]).
sustitucion(X,Z,[X|L1], [Z|L1]).
sustitucion(X,Z,[Y|L1],[Y|L2]) :- sustitucion(X,Z,L1,L2).

/* Longitud de la lista */
longitud([],0).
longitud([X|L],R) :- longitud(L,S), R is S+1.

/* Prefijo */
prefijo([],[]).
prefijo([],L).
prefijo([X|L],[X|L2]) :- prefijo(L,L2).