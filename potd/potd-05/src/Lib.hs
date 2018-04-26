module Lib
    ( split
    , merge
    , mergesort
    ) where

-- Your code here!
first :: [a] -> [a]
first [] = []
first l@(x:xs) | length l `mod` 2 == 0 = x : first xs
               | otherwise = first xs

second :: [a] -> [a]
second [] = []
second l@(x:xs) | length l `mod` 2 == 1 = x : second xs
                | otherwise = second xs

split :: Ord a => [a] -> ([a],[a])
split [] = ([],[])
split [a] = ([a],[])
split l@(x:xs) = (first l,second l)

merge :: Ord a => [a] -> [a] -> [a]
merge l1 [] = l1
merge [] l2 = l2
merge l1@(x1:xs1) l2@(x2:xs2) | x1 < x2 = x1 : merge xs1 l2
                              | x1 == x2 = x1 : x2 : merge xs1 xs2
                              | x1 > x2 = x2 : merge l1 xs2

mergesort :: Ord a => [a] -> [a]
mergesort [] = []
mergesort [x] = [x]
mergesort l = merge (mergesort x) (mergesort y)
          where (x,y) = split l