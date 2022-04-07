PROGRAM Ejercicio22;
VAR cont : INTEGER;
CONST n = 5;
VAR nombres : ARRAY [1..n] OF STRING;
PROCEDURE ordenarNombres();
	VAR i ,j: INTEGER;
	VAR aux : STRING;
BEGIN
	FOR i:=1 TO (length(nombres)+1) DO BEGIN
		FOR j:=i TO length(nombres) DO BEGIN
			IF nombres[i] > nombres[j+1] THEN BEGIN
				aux := nombres[i];
				nombres[i] := nombres[j+1];
				nombres[j+1] := aux;
			END;
		END;
		write(nombres[i],' ');
	END;

END;
BEGIN
	FOR cont:=1 TO length(nombres) DO BEGIN
		writeln('Ingrese el nombre');
		readln(nombres[cont]);
	END;
	ordenarNombres();
END.
