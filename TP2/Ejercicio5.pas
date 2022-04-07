PROGRAM Ejercicio5;
    {Escribir un algoritmo que determine si un número es par. 
    Modificar el código para verificar si N es divisible por M.}
VAR n,m: integer;
FUNCTION esPar(n,m : integer) : boolean;
BEGIN
    esPar:= (n MOD m) = 0;
END;
BEGIN
    writeln('Ingrese el valor de A');
    read(n);
    writeln('Ingrese el valor de B');
    read(m);
    IF (esPar(n,m)) THEN
        write(n,' es divisible por ', m)
    ELSE
         write(n,' no es divisible por ', m);

END.