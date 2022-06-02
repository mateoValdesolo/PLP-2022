justificarCentro :: Int -> String -> String 
justificarCentro n st
    | n < length st = "Error"
    | n == length st = st
    | otherwise = blancos (div (n - length(st)) 2) ++ st ++ blancos (div (n - length(st)) 2) 

blancos:: Int -> String
blancos n
    | n == 1 = " "
    | n > 1 = " " ++ blancos (n-1)