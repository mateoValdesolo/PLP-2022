tripla ::(Int,Int,Int) -> String
tripla(a,b,c)
    | a <= b = repeatt a b c
    | otherwise = "No se puede"

repeatt :: Int -> Int -> Int -> String
repeatt a b c =
    if ((a <= b) && (mod a c == 0))
          then show (a) ++ "" ++ repeatt(a+1) b c
   else if (a <= b) then repeatt (a+1) b c
        else ""
