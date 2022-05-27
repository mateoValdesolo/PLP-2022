tablita3 :: (Int,Int) -> Int -> String
tablita3 (j,k) m
    | (j < k) || (k < 2) || (m < 0) = "Error"
    | j == k = show(j) ++ " " ++ show(sumat j m)
    | j > k = show(j) ++ " " ++ show(sumat j m) ++ "\n" ++ tablita3 (j-1,k) m

sumat :: Int -> Int -> Float
sumat l m
    | l > 2 = sumat (l-1) m + cuenta l m
    | l == 2 = cuenta l m

cuenta :: Int -> Int -> Float
cuenta x m = fromIntegral(parte1 + parte2) / fromIntegral parte3
    where
        parte1 = ((m*x)-3)^3
        parte2 = (-2)*(x-(m^2))
        parte3 = (x^3)-m+4