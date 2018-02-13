module Lib
    ( sumDigits
    , validate
    , toDigits
    , doubleEveryOther
    ) where

toDigits :: Integer -> [Integer]
toDigits n = aux n []
  where aux 0 result = result
        aux n result = let (d, r) = divMod n 10
                       in aux d (r:result)

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther xs = reverse $ aux (reverse xs)
  where aux []       = []
        aux [x]      = [x]
        aux (x:y:xs) = x : 2*y : aux xs

-- Your code here!
suma :: [Integer] -> Integer
suma [] = 0
suma (x:xs) = x + sum xs

sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits (x:xs) = suma (toDigits x) + sumDigits xs

validate :: Integer -> Bool
validate n | (sumDigits (doubleEveryOther (toDigits n))) `mod` 10 == 0 = True
           | otherwise = False
