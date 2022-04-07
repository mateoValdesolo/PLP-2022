PROGRAM Ejercicio2_A;
        {La suma y resta de ambos números, utilizando para ello sendas funciones.}
        VAR a, b : integer;
        FUNCTION sum (a,b:integer) : integer;
        BEGIN
                sum:= a+b;
        END;
        FUNCTION res (a,b:integer) : integer;
        BEGIN
                res:= a-b;
        END;
BEGIN
        writeln('Ingrese el valor de A');
        read(a);
        writeln('Ingrese el valor de B');
        read(b);
        writeln('El resultado de A + B es: ',sum(a,b));
        writeln('El resultado de A - B es: ',res(a,b));
END.
