/*sumarL([[1,2,3],[5,6,7]],R). = [6, 18] */
sumarL([],[]).
sumarL([X|L],[R|L2]) :- suma(X,R), sumarL(L,L2).

/*Suma los elementos dentro de la lista*/
suma([],0).
suma([X|L],R) :- suma(L,S), R is X+S.