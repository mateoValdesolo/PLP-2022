%Progenitor
progenitor(juan, ana).
progenitor(maria, ana).
progenitor(pedro,pablo).
progenitor(maria,pablo).
progenitor(juan,luis).
progenitor(maria,luis).
progenitor(pedro,luciano).
progenitor(laura,luciano).
progenitor(laura,ariel).
progenitor(pedro,ariel).
progenitor(tomas,pedro).
progenitor(jose,juan).
progenitor(daniel,laura).
progenitor(andrea,laura).
progenitor(eugenia,maria).
progenitor(martin,maria).
progenitor(eugenia,rodolfo).
progenitor(martin,rodolfo).
progenitor(eugenia,sandra).
progenitor(martin,sandra).
progenitor(rodolfo,damian).
progenitor(claudia,damian).
progenitor(norma,andrea).
progenitor(carlos,andrea).
progenitor(norma,cecilia).
progenitor(carlos,cecilia).
progenitor(cecilia,gabriel).
progenitor(javier,gabriel).
progenitor(jorge,carlos).
progenitor(silvia,carlos).


% Femenino o Masculino

femenino(ana).
femenino(maria).
femenino(laura).
femenino(eugenia).
femenino(andrea).
femenino(sandra).
femenino(claudia).
femenino(norma).
femenino(cecilia).
femenino(silvia).


masculino(juan).
masculino(pedro).
masculino(pablo).
masculino(luis).
masculino(luciano).
masculino(ariel).
masculino(tomas).
masculino(jose).
masculino(daniel).
masculino(martin).
masculino(rodolfo).
masculino(damian).
masculino(carlos).
masculino(gabriel).
masculino(javier).
masculino(jorge).


%Casados
casado(juan, maria).
casado(pedro, laura).
casado(eugenia, martin).
casado(rodolfo, claudia).
casado(daniel, andrea).
casado(norma,carlos).
casado(cecilia,javier).


%Padre Y Madre
padre(X,Y) :- masculino(X), progenitor(X,Y).
madre(X,Y) :- femenino(X), progenitor(X,Y).

%Hermano
hermano(X,Y) :- progenitor(Z,X), progenitor(Z,Y), not(X=Y).

%Abuelo Y Bisabuelo
abuelo(X,Y) :- progenitor(X,Z), progenitor(Z,Y).
bisabuelo(X,Y) :- abuelo(X,Z), progenitor(Z,Y).

%Tio Y Primo
tio(X,Y) :- hermano(X,Z) , progenitor(Z,Y).
primo(X,Y) :- progenitor(Z,X), progenitor(W,Y), hermano(W,Z).

%Ancestro
ancestro(X,Y) :- progenitor(X,Y).
ancestro(X,Y) :- ancestro(X,Z),progenitor(Y,Z).

%Soltero
soltero(X) :- (not(casado(X,Y)), not(casado(Y,X))).

%Amante
amante(X,Y) :- progenitor(X,Z), progenitor(Y,Z), not(casado(X,Y)), not(casado(Y,X)).

%Suegra Y Suegro
suegra(X,Y) :- femenino(X), casado(Y,Z), progenitor(X,Z).
suegro(X,Y) :- masculino(X), casado(Y,Z), progenitor(X,Z).

