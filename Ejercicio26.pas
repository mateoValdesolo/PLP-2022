PROGRAM Ejercicio26;
 
TYPE
    Complejo = RECORD
        ParteReal: real;
        ParteImag: real;
    END;
VAR
    numero1,numero2: Complejo;
 
FUNCTION producto(): Complejo;
    VAR
    resultado: Complejo;
    p1,p2,p3,p4: real;
BEGIN
    p1 := numero1.ParteReal*numero2.ParteReal;
    p2 := numero1.ParteReal*numero2.ParteImag;
    p3 := numero1.ParteImag*numero2.ParteReal;
    p4 := numero1.ParteImag*numero2.ParteImag;
    resultado.ParteReal := p1+ (p4*(-1));
    resultado.ParteImag := p2+p3;
    producto := resultado;
END;
 
PROCEDURE calcularOperaciones();
    VAR
    aux: Integer;
    resul: Complejo;
BEGIN
    writeLn('Ingrese la operacion que desea calcular 1: Suma 2:Resta 3:Producto 4:Division');
    read(aux);
    CASE aux OF
        1: writeLn( '( ',numero1.ParteReal,' + ',numero1.ParteImag,'i ) + (', numero2.ParteReal,' + ',numero2.ParteImag,'i ) = ',
        numero1.ParteReal+numero2.ParteReal, ' + ', numero1.ParteImag + numero2.ParteImag, 'i');
        2: writeLn( '( ',numero1.ParteReal,' + ',numero1.ParteImag,'i ) - (', numero2.ParteReal,' + ',numero2.ParteImag,'i ) = ',
        numero1.ParteReal-numero2.ParteReal, ' + ', numero1.ParteImag - numero2.ParteImag, 'i');
        3: BEGIN
            resul := producto();
            writeLn( '( ',numero1.ParteReal,' + ',numero1.ParteImag,'i ) * (', numero2.ParteReal,' + ',numero2.ParteImag,'i ) = ',
            resul.ParteReal,' + ',resul.ParteImag);      
        END;
    END;
END;
 
BEGIN
    writeLn('Ingrese el primer numero complejo');
    writeLn('Parte real: ');
    read(numero1.ParteReal);
    writeLn('Parte imaginaria: ');
    read(numero1.ParteImag);
    writeLn('Ingrese el segundo numero complejo');
    writeLn('Parte real: ');
    read(numero2.ParteReal);
    writeLn('Parte imaginaria: ');
    read(numero2.ParteImag);
    calcularOperaciones();
END.aciones();
END.