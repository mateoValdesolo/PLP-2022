-- El primer elemento de la tupla es menor
abund1 :: (Int,Int) -> String
abund1 (n,m)
    | n > m || m <= 0 || n < 0 = "Error"
    | n == m && esAbund && esPar = show(n)
    | n == m && (not(esAbund) || not(esPar)) = ""
    | n < m && esAbund && esPar =  show(n)  ++ " " ++ abund1 (n+1,m)
    | n < m && (not(esAbund) || not(esPar)) = abund1(n+1,m)
        where
            esAbund = (calcularAbund n n) > (2*n) -- Ve si el la suma de los divisores es mayor al doble del numero
            esPar = (mod n 2) == 0 -- Ve si el numero es par

-- Calcula la suma de los divisores de m
calcularAbund :: Int -> Int -> Int
calcularAbund i num -- Uso 2 parametros, para verificar si el i es divisor de n
    | i == 0 = 0
    | i == 1 = 1
    | i > 1 && (mod num i == 0) = i + (calcularAbund (i-1) num)
    | otherwise = (calcularAbund (i-1) num)