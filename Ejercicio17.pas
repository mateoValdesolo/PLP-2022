PROGRAM	Ejercicio17;
VAR arreglo : ARRAY [1..100] of INTEGER;
	PROCEDURE esPrimo(var arr : ARRAY OF INTEGER);
		VAR cont,i : INTEGER;
	BEGIN
		i:=1;
		FOR cont:=2 TO 200 DO BEGIN
			IF((cont MOD 2 <> 0) AND (cont MOD 3 <> 0) AND (cont MOD 5 <> 0) AND (cont MOD 7 <> 0) AND (cont MOD 11 <> 0) 
			OR (cont = 2) OR (cont = 3) OR (cont = 5) OR (cont = 7) OR (cont = 11)) THEN BEGIN
				arr[i]:=cont;
				i:=succ(i);
				writeln(cont,' Es primo');
			END;
		END;
	END;
BEGIN
esPrimo(arreglo);
END.
