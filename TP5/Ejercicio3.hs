allEqual :: Int -> Int -> Int -> Bool
allEqual n m p = (n == m) && (m == p)
 
losCuatroIguales :: Int -> Int -> Int -> Int -> Bool
losCuatroIguales a b c d =
   if (allEqual a b c) then (c == d)
   else False