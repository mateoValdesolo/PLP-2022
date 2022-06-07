/* Inclusion */
incluido(X,[Y|L]) :- incluido(X,L).
incluido(X,[X|L]).

/* Igualdad */
igual([],[]).
igual([X|L1],[X|L2]) :- igual(L1,L2).

/* Union */

/* Interseccion */

/* Diferencia */