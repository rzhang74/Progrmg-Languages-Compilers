sub a b k = k $ a - b
sub3 a b c k = sub a b (\v1 -> sub v1 c (\v2 -> k $ 1 + v2))