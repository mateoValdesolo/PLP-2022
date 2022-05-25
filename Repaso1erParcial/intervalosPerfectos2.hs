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