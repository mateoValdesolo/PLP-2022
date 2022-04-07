PROGRAM Ejercicio2_B;
        {El producto y la división, utilizando procedimientos.}
        VAR a,b : integer;
PROCEDURE mulDiv (VAR a,b : integer);
        VAR mul, divi : integer;
        BEGIN
          writeln('Ingrese el valor de A');
          read(a);
          writeln('Ingrese el valor de B');
          read(b);
          mul:= a*b;
          divi:= a DIV b;
          writeln('El resultado de A * B es: ', mul);
          writeln('El resultado de A DIV B es: ', divi);
END;
BEGIN
  muldiv(a,b);
END.