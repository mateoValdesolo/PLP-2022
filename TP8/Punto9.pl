/* Inclusion */
incluido(X,[Y|L]) :- incluido(X,L).
incluido(X,[X|L]).

/* Igualdad */
igual([],[]).
igual([X|L1],[X|L2]) :- igual(L1,L2).

/* Union */
union([],L,L).
union([X|L],L2,[X|L3]) :- not(incluido(X,L2)), union(L,L2,L3).
union([X|L],L2,L3) :- union(L,L2,L3).

/* Interseccion */
interseccion([],L,[]).
interseccion([X|L],L2,[X|L3]) :- incluido(X,L2), interseccion(L,L2,L3).
interseccion([X|L],L2,L3) :- not(incluido(X,L2)),interseccion(L,L2,L3).

/* Diferencia */
diferencia([],L,[]).
diferencia([X|L],L2,[X|L3]) :- not(incluido(X,L2)), diferencia(L,L2,L3).
diferencia([X|L],L2,L3) :- incluido(X,L2), diferencia(L,L2,L3).