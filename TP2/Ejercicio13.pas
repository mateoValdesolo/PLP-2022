PROGRAM Ejercicio13;
    {Sabiendo que la relación entre temperaturas Celsius (C) y Fahrenheit (F) 
    está dada por la fórmula C = 5/9 * (F-32), que un algoritmo muestre una tabla 
    de equivalencia entre grados Celsius y Fahrenheit, para valores entre 
    O° F y 200° F , con intervalos de 10°.}
PROCEDURE celsiusFahrenheit();
    VAR i: integer;
BEGIN
    i:= 0;
    WHILE i<200 DO
        BEGIN
            writeln('Fahrenheit ' ,i);
            writeln ('Celius: ', (5/9)* (i-32));
            i:= i+10;
    END;
END;
BEGIN
    celsiusFahrenheit();
END.