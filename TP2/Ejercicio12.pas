PROGRAM Ejercicio12;
    {Que un algoritmo descomponga un número en sus factores primos}
VAR a: integer;
PROCEDURE descomponer(a: integer);
    VAR x: integer;
BEGIN
    x:=2;
    WHILE (a<>1) DO BEGIN
        IF (a mod x = 0) THEN BEGIN
            write(x,' ');
            a:= a div x
            END
        ELSE
            x:= succ(x);
    END;
END; 
BEGIN
    write('Escriba un numero');
    read(a);
    descomponer(a);
END.
