allDiferent :: Int -> Int -> Int -> Bool
allDiferent a b c
    | a /= b && a /= c && b /= c = True
    | otherwise = False