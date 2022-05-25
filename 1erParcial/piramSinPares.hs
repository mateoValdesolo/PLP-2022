piramSinPares :: Int -> String
piramSinPares a = bucle a 1


bucle :: Int -> Int -> String
bucle num i 
    | i > num && i <= (num*2)-1 = impr num 1 i
    | i <= num = impr num 1 i


impr :: Int -> Int -> Int -> String
impr num i top 
    | i == top && (mod i 2 == 0) = show "*" ++ "\n" ++ bucle num (i+1)
    | i == top = show i ++ "\n" ++ bucle num (i+1) 
    | i <= top = show i ++ impr num (i+1) top
    | i <= top && (mod i 2 == 0) = show "*" ++ impr num (i+1) top