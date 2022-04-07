PROGRAM Ejercicio25;
VAR A,B : STRING;
VAR N,M,pos : INTEGER;

PROCEDURE Subcad (A : STRING ; N : INTEGER ; VAR B : STRING; M : INTEGER ; pos : INTEGER);
    VAR i : INTEGER;
BEGIN
    IF ((pos + M) <= N+1) THEN BEGIN
        FOR i := pos TO (M+(pos-1)) DO BEGIN
            B := B + A[i];
        END;
        writeln('La subcadena B es: ',B)
    END
    ELSE
        writeln('Error, no se puede obtener la cadena');
END;
BEGIN
    writeln('Ingrese la cadena A');
    readln(A);
    N := length(A);
    writeln(N);
    B:='';
    writeln('Ingrese las M posiciones');
    read(M);
    writeln('Ingrese la posicion a partir de la cual desea comenzar a extraer la cadena B');
    read(pos);
    Subcad(A,N,B,M,pos);
END.