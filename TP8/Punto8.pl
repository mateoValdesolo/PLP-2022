/* Rotacion a la izquierda */
rotIzq([X|L],R) :- concat(L,[X],R).

/* Rotacion a la derecha */
rotDer(X,T) :- ultimo(X,R), sacarUlt(X,S), concat([R],S,T).

sacarUlt([X],[]).
sacarUlt([X|L],[X|L2]) :- sacarUlt(L,L2).

ultimo([X],X).
ultimo([X|L],R) :- ultimo(L,R).

/* Eliminacion de todas las ocurrencias de un elemento */
elimOcurr(_,[],[]).
elimOcurr(X,[X|L1],L2) :- elimOcurr(X,L1,L2).
elimOcurr(E,[X|L],[X|L2]) :- elimOcurr(E,L,L2).

/* Sustitucion de todas las ocurrencias de un elemento por otro */
sustOcurr(_,_,[],[]).
sustOcurr(P,Q,[P|L1],[Q|L2]) :- sustOcurr(P,Q,L1,L2).
sustOcurr(P,Q,[X|L],[X|L2]) :- sustOcurr(P,Q,L,L2).

/* Cardinalidad */
cardinalidad([],0).
cardinalidad([X|L],succ(R)) :- elimOcurr(X,L,L2), cardinalidad(L2,R).

/* Inversion */
invertir([],[]).
invertir([X|L],R) :- invertir(L,S), concat(S,[X],R).

concat([], L, L).
concat([X|L], L2, [X|L3]) :- concat(L,L2,L3).

/* Sufijo Terminar */
sufijo([X],[X]).
sufijo([X|L],L2) :- sufijo(L,L2).

/* Generar Palindromo */
palindromo(L,R) :- invertir(L,S), concat(L,S,R).

/* Duplicar elementos de la lista */
duplicar([],[]).
duplicar([X|L],[X|[X|L2]]) :- duplicar(L,L2).