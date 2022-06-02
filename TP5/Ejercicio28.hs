intervalo :: (Int,Int) -> String
intervalo (n,m)
    | n > m || m <= 0 = "Error"
    | n < m && esCuadrado = intervalo(n, m-1) ++ "\n" ++ show(m) ++ " " ++ show(m-n+1) 
    | n < m && not(esCuadrado) = intervalo(n, m-1)
    | n == m && esCuadrado = show(m) ++ show(m-n+1)
    | n == m && not(esCuadrado) = ""
        where
            esCuadrado = sqrt(fromIntegral(m)) - fromIntegral(round(sqrt(fromIntegral(m)))) == 0