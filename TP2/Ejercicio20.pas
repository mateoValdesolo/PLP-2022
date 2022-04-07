PROGRAM Ejercicio20;
VAR A : ARRAY [1..3] of ARRAY [1..3] of INTEGER;
VAR i,j : INTEGER;
FUNCTION trazaMatriz() : INTEGER;
	VAR cont, suma : INTEGER;	
	BEGIN

	for cont := 1 to length(A) DO BEGIN
		suma := suma + A[cont][cont];
		
	END;
	trazaMatriz := suma;
END;
BEGIN

FOR i:= 1 to length(A) do BEGIN
	FOR j := 1 to length(A) do BEGIN
		writeln('Ingrese el numero para la posicion ',i,' ',j);
		read(A[i][j]);
		END;
END;

write(trazaMatriz());

END.
