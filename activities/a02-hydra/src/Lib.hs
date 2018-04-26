module Lib
    (chop) where


-- Your code here!
-- Feel free to write helper functions.

-- chop :: [Int] -> [Int]

chop :: [Int] -> [Int]
chop [] = []
chop (0:xs) = 0 : choop xs
chop [n] = [n-1]
chop (x:y:xs) = x-1 : y1+1 : xs


-- chop xx = aux xx (length xx)
--  where aux [] n = []
--        aux (x:[]) n = 
--          if (x>0)
--             then x-1:[]
--             else x:[]
--        aux (x:y:re) n =
--          if (x>0)
--             then x-1:y+n-1:re
--             else x:aux (y:re) (n-1)
