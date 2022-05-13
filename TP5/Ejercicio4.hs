cuantosIguales :: Int -> Int -> Int -> Int
cuantosIguales a b c =
     if ((a == b) && (b == c)) then 3
          else if (((a == b) || (a == c)) || ((b == c) || (b == a))) then 2
               else 1

cuantosIgualesDeDos :: Int -> Int -> Int
cuantosIgualesDeDos a b =
     if (a == b) then 2
          else 1
