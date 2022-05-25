piramSinNones :: Int -> String
piramSinNones m
    | m < 0 = "Error"
    | m == 0 = "0"
    | otherwise = ascenso 0 m

-- Va desde 0 hasta m 
ascenso :: Int -> Int -> String
ascenso i m
    | i < m = mostrar 0 i ++ "\n" ++ ascenso(i+1) m
    | i == m = mostrar 0 i ++ "\n" ++ descenso(i-1)

-- Va desde m hasta 0
descenso :: Int -> String
descenso i
    | i > 0 = mostrar 0 i ++ "\n" ++ descenso(i-1)
    | i == 0 = show(i)

-- Muestra los numeros desde 0 hasta i
mostrar :: Int -> Int -> String
mostrar i m
    | i < m && (mod i 2 == 0) = show(i) ++ mostrar (i+1) m
    | i < m  = show "*" ++ mostrar (i+1) m
    | i == m && (mod i 2 == 0) = show(m)
    | i == m = show "*"