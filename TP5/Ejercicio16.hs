hacerEspacios :: Int -> String
hacerEspacios n = repet 1 n

repet :: Int -> Int -> String
repet i n
 | n == 0 = ""
 | n == i = " "
 | otherwise = " " ++ repet (i+1) n