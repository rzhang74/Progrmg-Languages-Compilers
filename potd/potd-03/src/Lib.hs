module Lib
    ( toDigits
    , doubleEveryOther
    ) where

-- Your code here!
-- Remember that you are always free to write helper functions.

toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits x = toDigits (quot x 10) ++ [mod x 10]

doubleEveryOther :: [Integer] -> [Integer] 
doubleEveryOther [] = []
doubleEveryOther (x:[]) = [x]
doubleEveryOther all@(x:y:xs) | mod (len all) 2 == 0 = x*2 : y : doubleEveryOther xs
                              | otherwise = x : y*2 : doubleEveryOther xs

len :: [Integer] -> Integer
len [] = 0
len (x:xs) = 1 + len xs

