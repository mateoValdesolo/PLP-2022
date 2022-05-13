anioBisiesto :: Int -> Int -> String
anioBisiesto min max = repet min max


repet :: Int -> Int -> String
repet min max
    | (mod min 4) == 0 =  show min ++ " bisiesto\n" ++ repet (min+1) max
    | (mod min 100) == 0 && (mod min 400) == 0 = show min ++ " bisiesto\n" ++ repet (min+1) max
    | min <= max = show min ++ " no bisiesto\n" ++ repet (min+1) max