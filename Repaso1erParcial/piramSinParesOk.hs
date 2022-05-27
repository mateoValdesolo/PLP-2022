piramSinPares :: Int -> String
piramSinPares m
    | m <= 0 = "Error"
    | m == 1 = "1"
    | otherwise = ascenso m ++ "\n" ++ descenso (m-1)

-- Va desde 0 hasta m 
ascenso :: Int -> String
ascenso m
    | m > 1 = ascenso (m-1) ++ "\n" ++ mostrar m
    | m == 1 = "1" ++ "\n"

-- Va desde m hasta 1
descenso :: Int -> String
descenso m
    | m > 1 = mostrar m ++ "\n" ++ descenso(m-1)
    | m == 1 = show(m)

-- Muestra los numeros desde 1 hasta m
mostrar :: Int -> String
mostrar m
    | m > 1 && esPar = mostrar (m-1) ++ "*"
    | m > 1 && not(esPar) = mostrar (m-1) ++ show(m)
    | m == 1 = "1"
        where
            esPar = (mod m 2 == 0) 
