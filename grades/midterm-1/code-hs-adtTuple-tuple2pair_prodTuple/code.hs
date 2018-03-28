data Tuple a b = Tuple a b
  deriving Show

tuple2pair :: Tuple a b -> (a,b)
tuple2pair (Tuple a b) = (a,b)

prodTuple :: Tuple Integer Integer -> Integer
prodTuple (Tuple a b) = a*b
