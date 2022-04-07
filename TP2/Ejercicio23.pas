PROGRAM Ejercicio23;
VAR
    cadena: String;
    i: Integer;
 
PROCEDURE realizarOperacion();
VAR
    num1,num2, aux, error: Integer;
    operacion,primerNum,segundoNum: String;
BEGIN
    {Busco el primer espacio}
    aux := pos(' ', cadena);
    IF aux <> 0 THEN BEGIN
        {Si encontro el primer espacio}
        {Corto la cadena desde el principio hasta el espacio (ahi estaria el primer numero)}
        primerNum := copy(cadena, 1, aux-1);
        val(primerNum,num1,error);
        {Corta la cadena desde el espacio hasta el final (ahi estaria la operacion y el segundo numero)}
        operacion :=  copy(cadena, aux+1, length(cadena));
        {Busco el segundo espacio}
        aux := pos(' ', operacion);
        IF aux <> 0 THEN BEGIN
            {Si encontro el segundo espacio, corta desde el segundo espacio hasta el final (ahi estaria el segundo numero)}
            segundoNum := copy(operacion,aux+1, length(operacion));
            VAL(segundoNum,num2,error);
            {Corta la cadena desde el espacio hasta el segundo espacio (ahi estaria la operacion)}
            operacion := copy(operacion,1,aux-1);
            CASE operacion OF
                'mas': writeln(num1,' + ',num2,' = ', num1+num2);
                'menos': writeln(num1,' - ',num2,' = ', num1-num2);
                'por': writeln(num1,' * ',num2,' = ', num1*num2);
                'dividido': writeln(num1,' / ',num2,' = ', num1 div num2)
            ELSE
                writeln('No se encontro la operacion 1');
            END;
        END
        ELSE
            writeln(' No encontro la operacion 2');
    END
    ELSE
        writeln('No encontro la operacion 3')
END;
 
BEGIN
    writeln('Ingrese una cadena');
    readLn(cadena);
    realizarOperacion();
END.
