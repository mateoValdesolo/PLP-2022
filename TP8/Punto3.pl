numero(0).
numero(succ(X)) :- numero(X).

suma(0,Z,Z).
suma(succ(X),Y,succ(Z)) :- suma(X,Y,Z).

resta(X,0,X).
resta(0,Y,0).
resta(succ(X),succ(Y),Z) :- resta(X,Y,Z).

mult(X,0,0).
mult(0,Y,0).
mult(X,succ(0),X).
mult(succ(X),Y,Z) :- mult(X,Y,A), suma(Y,A,Z).

div(X,0,-1).
div(0,Y,0).
div(X,succ(0),X).
div(X,Y,succ(Z)) :- resta(X,Y,R), div(R,Y,Z).

pot(X,0,succ(0)).
pot(0,X,0).
pot(X,succ(Y),Z) :- pot(X,Y,A), mult(X,A,Z).

esMayor(0).
mayorIg(X,0).
mayorIg(X,Y) :- resta(Y,X,Z), esMayor(Z).