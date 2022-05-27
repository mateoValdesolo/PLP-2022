piramSinNones :: Int -> String
piramSinNones m
    | m < 0 = "Error"
    | m == 0 = "0"
    | otherwise = ascenso m ++ "\n" ++ descenso(m-1)

-- Va desde 0 hasta m 
ascenso :: Int -> String
ascenso m
    | m > 0 = ascenso(m-1) ++ "\n" ++ mostrar m 
    | m == 0 = "0"

-- Va desde m hasta 0
descenso :: Int -> String
descenso m
    | m > 0 = mostrar m ++ "\n" ++ descenso(m-1)
    | m == 0 = show(m)

-- Muestra los numeros desde 0 hasta i
mostrar :: Int -> String
mostrar m
    | m > 0 && esPar = mostrar (m-1) ++ show(m)
    | m > 0 && not(esPar) = mostrar (m-1) ++ "*"
    | m == 0 =  "0"
        where
            esPar = (mod m 2 == 0) 