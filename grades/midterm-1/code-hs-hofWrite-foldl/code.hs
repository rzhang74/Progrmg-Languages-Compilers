myfoldl :: (b -> a -> b) -> b -> [a] -> b
myfoldl f i [] = i
myfoldl f i (x:xs) = myfoldl f (f x i) xs
