maxOcurr :: Int -> Int -> (Int,Int)
maxOcurr x y
    | x > y = (x,1)
    | x == y = (x,2)
    | otherwise = (y,1)


maxOcurr2 :: Int -> Int -> Int -> (Int,Int)
maxOcurr2 x y z =
    if (x == y && y == z) then 
        (x,3) else 
            if x == y then 
                (x,2) else 
                    if x == z then 
                        (x,2) else 
                            if y == z then 
                                (y,2) else 
                                    (z,1)