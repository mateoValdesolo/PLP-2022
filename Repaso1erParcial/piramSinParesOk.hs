piramSinPares :: Int -> String
piramSinPares m
    | m <= 0 = "Error"
    | m == 1 = "1"
    | otherwise = ascenso 1 m

-- Va desde 0 hasta m 
ascenso :: Int -> Int -> String
ascenso i m
    | i < m = mostrar 1 i ++ "\n" ++ ascenso(i+1) m
    | i == m = mostrar 1 i ++ "\n" ++ descenso(i-1)

-- Va desde m hasta 0
descenso :: Int -> String
descenso i
    | i > 1 = mostrar 1 i ++ "\n" ++ descenso(i-1)
    | i == 1 = show(i)

-- Muestra los numeros desde 0 hasta i
mostrar :: Int -> Int -> String
mostrar i m
    | i < m && (mod i 2 == 0) = show "*" ++ mostrar (i+1) m
    | i < m = show(i) ++ mostrar (i+1) m
    | i == m && (mod i 2 == 0) = show "*"
    | i == m  = show(m)
