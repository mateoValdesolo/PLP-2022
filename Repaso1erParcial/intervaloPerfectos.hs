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
    | n < m = calcularRaiz n n ++ intervaloPerfectos (n+1,m)
    | n == m = calcularRaiz n n

calcularRaiz :: Int -> Int -> String
calcularRaiz n m
    | n * n == m = show m ++ " "
    | n * n > m = calcularRaiz (n-1) m
    | otherwise = ""
