import Render

main = putStrLn . show $ doubleIt 40

doubleIt :: Int -> Int
doubleIt x = doubleIt' x x

doubleIt' :: Int -> Int -> Int
doubleIt' y x
    | y == 0    = x
    | otherwise = doubleIt' (y - 1) (addOne' x)

addOne' :: Int -> Int
addOne' = fromIntegral . addOne . fromIntegral
