-- La raíz cuadrada de un número "a" es exacta cuando encontramos un número "b" que elevado al cuadrado 
-- es igual al radicando, es decir, b² = a. Luego, se denomina cuadrado perfecto a los números que poseen 
-- raíces cuadradas exactas.
-- Definir en el lenguaje de programación funcional Haskell una función intervaloPerfectos que, 
-- dada una tupla (N,M) con N < M, que expresa un rango de enteros, genere una cadena con los números 
-- comprendidos entre N y M que cumplan con la propiedad de ser cuadrados perfectos.
-- EJEMPLO:
--     intervaloPerfectos (7, 50)  -- debe generar como salida
--     “9 16 25 36 49”

intervaloPerfectos :: (Int,Int) -> String
intervaloPerfectos (n,m)
    | n > m = "Error"
    | otherwise = recorr n m

-- Va desde N hasta M
recorr :: Int -> Int -> String
recorr n m
    | n < m = repet n n m
    | n == m = repet n n m

-- Recorre desde N hasta que encuentra el cuadrado
repet :: Int -> Int -> Int -> String
repet i num m
    | i * i == num = show(num) ++ " " ++ recorr (num+1) m
    | i * i > num = repet (i-1) num m
    | otherwise = recorr (num+1) m