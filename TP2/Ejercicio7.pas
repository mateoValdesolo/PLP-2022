PROGRAM Ejercicio7;
    {Imprimir por pantalla una lista de 20 números consecutivos, 
    los cuales comienzan con un número ingresado por teclado. }
    PROCEDURE consecutivos(a: integer);
        VAR i: integer;
        BEGIN
            FOR i:=1 TO 20 DO BEGIN
                a:= succ(a);
                writeln(a);
            END;
    END;
VAR a: integer;
BEGIN
    writeln('Escriba un numero');
    read(a);
    consecutivos(a);
END.
