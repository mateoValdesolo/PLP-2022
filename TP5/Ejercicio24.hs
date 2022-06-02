descomponer :: Int -> String
descomponer n
    | n > 10 =  (descomponer (div n 10)) ++ "\n" ++ repet (mod n 10) (mod n 10)
    | otherwise = repet n n

repet :: Int -> Int -> String
repet i n
    | i == 0 = ""
    | i == 1 = show n
    | otherwise = repet (i-1) n ++ show(n)
