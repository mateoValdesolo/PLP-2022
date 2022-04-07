PROGRAM Ejercicio24;
VAR textoIng : STRING;

FUNCTION palabraCorta(texto : STRING) : STRING;
	VAR actual, corta: STRING;
	VAR i, contActual, contCorta : INTEGER;
BEGIN
	i := 1;
	contCorta := maxInt;
	contActual := 0;
	corta:='';
	actual:='';
	WHILE(texto[i] <> '&') DO BEGIN
		IF NOT ( ( texto[i] = ' ' ) OR ( texto[i] = ',' ) OR ( texto[i] = '.' ) OR (texto[i] = ';') ) THEN BEGIN
			actual:= actual + texto[i];
			contActual := succ(contActual);
		END
		ELSE BEGIN
			IF contActual <> 0 THEN BEGIN
				IF(contCorta > contActual) THEN BEGIN
					corta := actual;
					contCorta := contActual;
				END
				ELSE
					IF(contCorta = contActual) THEN
						corta := corta + ' ' + actual;
			END;
			actual := '';
			contActual := 0;
		END;
		i:=succ(i);
	END;
	IF NOT ((texto[i-1] = ' ') OR (texto[i-1] = ',') OR (texto[i-1] = ';') OR (texto[i-1] = '.')) THEN BEGIN
		IF (contCorta > contActual) THEN
			corta := actual
		ELSE
			IF (contCorta = contActual) THEN
				corta := corta + ' ' + actual;
	END;
	palabraCorta := corta;
END;

BEGIN
	writeln('Ingrese el texto');
	readln(textoIng);
	writeln(palabraCorta(textoIng));
END.
