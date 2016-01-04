module Operaciones where

binDec :: [Int] -> Int                       --- pasa de binario a decimal
binDec (x:[ ]) = x
binDec (x:y) = x + binDec y * 2

decBin :: Int -> [Int]
decBin 0 = [0]
decBin 1 = [1]
decBin n = decBin (div n 2) ++ [(mod n 2)]