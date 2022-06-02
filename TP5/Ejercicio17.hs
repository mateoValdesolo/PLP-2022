factorialTable :: Int -> Int -> String 
factorialTable m n
    | m > n || n <= 0 = "Error"
    | m < n = show(factorial m) ++ "\t" ++ factorialTable (m+1) n
    | m == n = show(factorial m)

factorial :: Int -> Int
factorial m
    | m == 0 = 1
    | m > 0 = factorial (m-1) * m