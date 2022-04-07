PROGRAM Ejercicio9;
    {Leer una serie de números reales, terminando la serie con un cero. 
    A continuación debe imprimir los datos a medida que se 
    los ingresa junto con la suma parcial de los mismos.}
    PROCEDURE sumaParcial ();
    VAR a,i  : real;
    BEGIN
        i:= 0;
        write ('Ingrese el valor de a, si desea terminar ingrese 0');
        read(a);
        WHILE a<>0 DO
        BEGIN
            i:= i+a;
            writeln ('La suma parcial hasta ahora es de: ',i);
            write ('Ingrese un numero, 0 para terminar ');
            read (a);
        END;
        write (' La suma quedo en ', i);
    END;
BEGIN
    sumaParcial ();
END.