PROGRAM Ejercicio18;
TYPE
	TipoIndiceConjuntos = 1..256;
	Conj = ARRAY [TipoIndiceConjuntos] OF BOOLEAN;
VAR A,B : Conj;
	PROCEDURE union(A,B : Conj);
	VAR i : INTEGER;
	BEGIN
		FOR i:=1 TO length(A) DO BEGIN
			IF(A[i] OR B[i])
				write(A[i],' En la posicion',i);
		END;
	END;
BEGIN
	
	
END.
