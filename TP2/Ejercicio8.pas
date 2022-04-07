PROGRAM Ejercicio8;
    {A partir de un procedimiento denominado intercambio(x,y), 
    intercambie sus valores. }
    PROCEDURE intercambio(VAR x,y: integer);
        VAR aux: integer;
    BEGIN
        aux := x;
        x := y;
        y := aux;
    END;
VAR a,b: integer;
BEGIN
    a := 5;
    b := 10;
    writeln('Antes del intercambio a = ',a,' b = ',b);
    intercambio(a,b);
    writeln('Despues del intercambio a = ',a,' b = ',b);
END.