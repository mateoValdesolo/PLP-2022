tablita2 :: (Int,Int) -> Int -> String
tablita2 (j,k) m
    | (j > k) || (j < 1) || (m <= 0)= "Error"
    | (mod j 2 == 0) = tablita2 (j+1,k) m
    | j == k = show(j) ++ " " ++ show(sumat j m)
    | j < k = show(j) ++ " " ++ show(sumat j m) ++ "\n" ++ tablita2(j+1,k) m

sumat :: Int -> Int -> Float
sumat l m
    | l > 0 =  sumat (l-1) m + cuenta l m
    | l == 0 = cuenta l m

cuenta :: Int -> Int -> Float
cuenta x m = fromIntegral(parte1 + parte2) / fromIntegral (parte3) 
    where
        parte1 = (x-(2*m))^2
        parte2 = (3*(m-x))
        parte3 = (x^3)-m+8