module Lib
    ( sumNaturals
    ) where

sumNaturals :: Int -> Int
{-
sumNaturals 0 = 0
sumNaturals n = n + sumNaturals (n - 1) 
--recursion
-}

{-
sumNaturals n = aux n 0
 where aux 0 t = t
       aux n t = aux (n-1) (n+t)
--tail recursion
-}

{-
sumNaturals n = sum [1..n]
-}

sumNaturals n = ((n+1)*n `div` 2)