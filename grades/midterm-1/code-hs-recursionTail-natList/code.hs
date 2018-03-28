natList n = aux n []
    where aux n temp | n < 0 = temp
                     | otherwise = aux (n-1) (n:temp)