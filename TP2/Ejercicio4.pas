PROGRAM Ejercicio4;
    {leer un número real y mostrar si es mayor, menor o igual a cero, 
    utilizando una función “mayor” que debe implementar.}
VAR a : real;
FUNCTION mayor(a : real) : boolean;
BEGIN
    mayor:= a>0;
END;
BEGIN
    writeln('Ingrese el valor de A');
    read(a);
    IF (a = 0) THEN
        write('Es Igual a 0')
    ELSE BEGIN
        IF(mayor(a)) THEN
            write('Es mayor a 0')
        ELSE
            write('Es menor a 0');
    END;
END.