PROGRAM Ejercicio3;
        {Dado el radio R de una esfera, escriba un programa que permita calcular 
        e imprimir su superficie y su volumen. Utilice un sólo procedimiento para 
        realizar todos estos cálculos.}
VAR a : real;
PROCEDURE esfera (VAR a : real);
        VAR sup, vol : real;
        BEGIN
                writeln('Ingrese el valor del radio');
                read(a);
                sup:= 4 * (PI) * Sqr(a);
                vol:= (4/3) * (PI) * (Sqr(a) * a);
                writeln('La superficie de la esfera es: ', sup);
                writeln('El volumen de la esfera es: ', vol);
        END;
BEGIN
esfera(a);
END.