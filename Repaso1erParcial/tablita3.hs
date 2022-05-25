tablita3 :: (Int,Int) -> Int -> String
tablita3 (j,k) m
    | (j < k) || (k < 2) || (m < 0) = "Error"
    | j == k = show(j) ++ " " ++ show(sumat 2 j m)
    | j > k = show(j) ++ " " ++ show(sumat 2 j m) ++ "\n" ++ tablita3 (j-1,k) m

sumat :: Int -> Int -> Int -> Float
sumat i l m
    | i < l = cuenta i m + sumat (i+1) l m
    | i == l = cuenta i m

cuenta :: Int -> Int -> Float
cuenta x m = fromIntegral(parte1 + parte2) / fromIntegral parte3
    where
        parte1 = ((m*x)-3)^3
        parte2 = (-2)*(x-(m^2))
        parte3 = (x^3)-m+4