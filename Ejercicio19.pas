PROGRAM Ejercicio19;
CONST N = 2;
Type
   arreglo = Array [1..N] of integer;
VAR A,B: arreglo;
   aux1: Integer;
 
PROCEDURE suma();
   VAR i: Integer;
BEGIN
    writeLn('Vector resultante de hacer la suma:');
    write('[');
    FOR i:= 1 TO N DO BEGIN
        write((A[i]+B[i]),', ');
    END;
    writeln(']');
END;
 
PROCEDURE productoEscalar();
    VAR i,aux: Integer;
BEGIN
    aux := 0;
    FOR i:= 1 TO N DO BEGIN
        aux := aux + (A[i]*B[i]);
    END;
    writeln('El resultado del producto escalar es: ',aux);
END;
BEGIN
    FOR aux1 := 1 TO N DO BEGIN
        writeln('Ingrese el numero en la posicion: ',aux1,' del vector A');
        read(A[aux1]);
    END;
    FOR aux1 := 1 TO N DO BEGIN
        writeln('Ingrese el numero en la posicion: ',aux1,' del vector B');
        read(B[aux1]);
    END;
    suma();
    productoEscalar();
END.