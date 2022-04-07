PROGRAM Ejercicio21;
VAR cadena : String;


FUNCTION esCapicua() : BOOLEAN;
VAR i,j : INTEGER;
VAR aux : BOOLEAN;
BEGIN
	i := 1;
	j := length(cadena);
	aux := true;
	WHILE (i <= j) AND (aux) DO BEGIN
		if(cadena[i] = cadena[j]) THEN BEGIN
			i := succ(i);
			j := pred(j)
		END
		ELSE
			aux := false;
	END;
	esCapicua := aux;
END;
BEGIN
writeln('Ingrese la palabra');
read(cadena);
writeln(esCapicua());


END.
