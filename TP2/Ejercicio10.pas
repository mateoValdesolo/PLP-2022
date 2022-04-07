PROGRAM Ejercicio10;
    {Leer A y B, enteros. Calcular C = A * B mediante sumas sucesivas e imprimir el resultado.}
    VAR a,b, c: Integer;
    FUNCTION sumasSucesivas(a,b: Integer) : Integer;
    VAR aux,i: Integer;
    BEGIN
        aux := 0;
        FOR i := 1 TO b DO BEGIN
            aux := aux+a;
        END;
        sumasSucesivas := aux;
    END;
BEGIN
    WRITELN('Ingrese el valor de A: ');
    read(a);
    WRITELN('Ingrese el valor de B: ');
    read(b);
    c := sumasSucesivas(a,b);
    WRITELN('EL RESULTADO ES: ',a,' * ', b,' = ',c);
END.