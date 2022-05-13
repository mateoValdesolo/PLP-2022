minMax :: (Int,Int) -> (Int,Int)
minMax (x,y) = (min x y, max x y)
    where
        min x y = if x < y then x else y
        max x y = if x > y then x else y