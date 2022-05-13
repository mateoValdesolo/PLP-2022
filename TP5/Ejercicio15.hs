duplicar :: String -> Int -> String
duplicar x n = repet 1 n x 

repet :: Int -> Int -> String -> String
repet i n x 
 | n == 0 = ""
 | n == i = x
 | otherwise = x ++ repet (i+1) n x