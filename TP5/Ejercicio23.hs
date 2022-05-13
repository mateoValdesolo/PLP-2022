nuevoPar :: (Int,Int) -> (Int,Int) -> (Int,Int) -> (Int,Int)
nuevoPar (a,b) (c,d) (e,f) = (menorTres (menor (a,b)) (menor (c,d)) (menor (e,f) ), mayorTres (mayor (a,b)) (mayor (c,d)) (mayor (e,f)))

menor :: (Int,Int) -> Int
menor (a,b)
    | a < b = a
    | otherwise = b

mayor :: (Int,Int) -> Int
mayor (a,b)
    | a > b = a
    | otherwise = b

menorTres :: Int -> Int -> Int -> Int
menorTres a b c = (menor ((menor (a,b)), c))

mayorTres :: Int -> Int -> Int -> Int
mayorTres a b c = (mayor ((mayor (a,b)), c))