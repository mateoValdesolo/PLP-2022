alinear:: String -> String -> String -> Int -> String
alinear a b c x = a ++ blancos x ++ b ++ blancos x ++ c

blancos:: Int -> String
blancos n
    | n == 1 = " "
    | n > 1 = " " ++ blancos (n-1)