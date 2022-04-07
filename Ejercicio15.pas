PROGRAM Ejercicio15;
VAR aux: String;
FUNCTION vocalQueMasAParece(aux: String): Char;
    VAR j,a,e,i,o,u : integer;
    BEGIN
        a:= 0;
        e:= 0;
        i:= 0;
        o:= 0;
        u:= 0;
        FOR j := 0 TO Length(aux) DO BEGIN
            CASE aux[j] OF
            'a': a := a+1;
            'e': e :=e+1;
            'i': i :=i+1;
            'o': o :=o+1;
            'u': u :=u+1;
        END;
        IF ((a>e) AND (a>i) AND (a>o) AND (a>u)) THEN
            vocalQueMasAParece:= 'a'
        ELSE
            IF ((e>i) AND (e>o) AND (e>u)) THEN
                vocalQueMasAParece:='e'
            ELSE
                IF ((i>o) AND (i>u)) THEN
                    vocalQueMasAParece := 'i'
                ELSE
                    IF (o>u) THEN
                        vocalQueMasAParece:= 'o'
                    ELSE
                        vocalQueMasAParece:= 'u';
            END;
        END;
BEGIN
    writeln('Ingrese un texto');
    read(aux);
    writeln('La vocal que mas aparece es: ',vocalQueMasAParece(aux));
END.
