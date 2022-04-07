PROGRAM Ejercicio6;
        {Lea dos números y luego permita introducir una opción, 
        que puede ser suma, resta, multiplicación o división. 
        A partir de estas entradas, según la opción elegida realizar el cálculo.}
VAR a,b: integer;
PROCEDURE opciones(a,b:integer);
VAR opcion:integer;
BEGIN
    writeln('Ingrese el valor de A');
    read(a);
    writeln('Ingrese el valor de B');
    read(b);
    writeln('Ingrese 1 para SUMA, 2 para RESTA, 3 MULT., 4 DIV.');
    read(opcion);
    CASE opcion OF
        1: writeln('La suma entre ',a,' y ',b,' es: ',a+b);
        2: writeln('La resta entre ',a,' y ',b,' es: ',a-b);
        3: writeln('La multiplicacion entre ',a,' y ',b,' es: ',a*b);
        4: writeln('La division entre ',a,' y ',b,' es: ',a / b);
    ELSE 
        writeln('Error');
    END;
END;
BEGIN
    opciones(a,b);
END.