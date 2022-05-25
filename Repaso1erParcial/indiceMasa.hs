{- (Peso, Altura) -}
type MasaCorporal = (Double, Double)

indiceMasa :: Double -> Double -> String
indiceMasa p a
    | (calculoMasa p a) < 18.5 = "Muy Bajo"
    | ((calculoMasa p a) > 18.5) && ((calculoMasa p a) < 25)  = "Normal"
    | ((calculoMasa p a) > 25) && ((calculoMasa p a) < 30)  = "Alto"
    | ((calculoMasa p a) > 30) = "Muy Alto"

calculoMasa :: Double -> Double -> Double
calculoMasa p a = (p / (a*a))