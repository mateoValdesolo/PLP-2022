fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n
 | n > 1     = fib (n-2) + fib (n-1)
 | otherwise = 0


fact :: Int -> Int
fact 0 = 1
fact n = n * fact(n-1)

suce :: Int -> Float -> Float
suce x n = (sumat 1.0 n) / fromIntegral (fact  x)

sumat :: Float -> Float -> Float
sumat i n | i == n = i**n
 | otherwise = i**n + sumat (i+1) n
