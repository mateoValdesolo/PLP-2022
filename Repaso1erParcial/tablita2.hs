tablita2 :: (Int,Int) -> Int -> String
tablita2 (j,k) m
    | (j > k) || (j < 1) || (m <= 0)= "Error"
    | (mod j 2 == 0) = tablita2 (j+1,k) m
    | j == k = show(j) ++ " " ++ show(sumat 0 j m)
    | j < k = show(j) ++ " " ++ show(sumat 0 j m) ++ "\n" ++ tablita2(j+1,k) m

sumat :: Int -> Int -> Int -> Float
sumat x l m
    | x < l = cuenta x m + sumat (x+1) l m
    | x == l = cuenta x m

cuenta :: Int -> Int -> Float
cuenta x m = fromIntegral(parte1 + parte2) / fromIntegral (parte3) 
    where
        parte1 = (x-(2*m))^2
        parte2 = (3*(m-x))
        parte3 = (x^3)-m+8