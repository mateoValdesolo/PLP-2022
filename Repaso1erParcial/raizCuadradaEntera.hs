-- La raíz cuadrada entera de un número natural N es el mayor entero cuyo cuadrado es menor o igual que N. 
-- Por ejemplo, las raíces cuadradas enteras de 15 y 16 son 3 y 4, respectivamente.
-- Escriba en el lenguaje de programación funcional Haskell una función recursiva 
-- raizCuadradaEntera que calcule la raíz cuadrada entera de su argumento 
-- (no es posible utilizar la funcion sqrt). 
-- Por ejemplo: 
--    raizCuadradaEntera 10
--    3
raizCuadradaEntera :: Int -> Int
raizCuadradaEntera num = repet num num

repet :: Int -> Int -> Int
repet i num
    | i * i <= num = i
    | i * i > num = repet (i-1) num