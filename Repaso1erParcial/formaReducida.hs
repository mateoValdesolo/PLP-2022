formaReducida :: (Int, Int) -> (Int,Int)
formaReducida (x,y) = (div x aux , div y aux)
    where
        aux = mcd x y

mcd :: Int -> Int -> Int
mcd a 0 = a
mcd a b = mcd b (mod a b)