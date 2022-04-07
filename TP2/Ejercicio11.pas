PROGRAM Ejercicio11;
    {A partir de una función denominada expo, con los parámetros x y n 
    devuelva el valor de x elevado a la n, donde x es un número real y n entero.}
VAR x, resultado: Real;
VAR n: Integer;
FUNCTION expo(x: real; n: Integer) :real; 
    VAR i: Integer;
    VAR aux: real;
    BEGIN
    {Verifico que n no sea 0 sino el resultado es 1}
    IF (n = 0) THEN
        expo := 1
    ELSE BEGIN
        aux := x;
        FOR i := 2 TO n DO BEGIN
            aux := aux*x;
        END;
        expo := aux;
    END;
END;
BEGIN
    WRITELN('Ingrese el valor x:');
    read(x);
    WRITELN('Ingrese el valor n:');
    read(n);
    resultado := expo(x,n);
    WRITELN('El resultado es: (',x,')^',n,' = ',resultado);
END.