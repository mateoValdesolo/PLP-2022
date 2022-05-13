descomponer :: Int -> String
descomponer n
    | n > 10 =  (descomponer (div n 10)) ++ "\n" ++ repet 1 (mod n 10)
    | otherwise = repet 1 n

repet :: Int -> Int -> String
repet i n
    | n == 0 = ""
    | n == i = show n
    | otherwise = show n ++ repet (i+1) n