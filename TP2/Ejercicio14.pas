PROGRAM Ejercicio14;
VAR a: String;
FUNCTION cantLetras (a: String) : integer;
    VAR i , j : integer;
    BEGIN
        j:= 0;
        i:= 0;
        WHILE j<length(a)  DO
        BEGIN
        IF (a[j] = '.') THEN
            j:= length(a)+12
        ELSE 
            IF (a[j] = ' ') THEN
                j:= succ(j)
            ELSE BEGIN
                i:= succ(i); 
                j:= succ(j);
            END;
        END;
        cantLetras:= i;
    END;
FUNCTION cantPalabras (a: String) : integer;
    VAR i, j  : integer;
    BEGIN
    j:= 0;
    i:= 0;
    WHILE j<=length(a) DO
        BEGIN
            IF (a[j] = ' ') OR (a[j] = '.')  THEN
            i:= succ (i);
        j:= succ(j)
    END;
    cantPalabras:= i;
END;
BEGIN 
    write ('Ingrese una texto ');
    read (a);
    writeln ('Cant letras: ', cantLetras(a));
    writeln('Cant palabras: ',cantPalabras(a));
END.
