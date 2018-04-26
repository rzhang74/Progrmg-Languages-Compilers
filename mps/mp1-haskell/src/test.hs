module Lib where

-- basics line 3-53 recurion; functions inside a function;
mytake :: Int -> [a] -> [a]
mytake _ [] = []
mytake n (x:xs) | n > 0 = x : mytake (n-1) xs
                | otherwise = []


mydrop :: Int -> [a] -> [a]
mydrop _ [] = []
mydrop n all@(x:xs) | n > 0 = mydrop (n-1) xs
                    | otherwise = all

rev :: [a] -> [a]
rev [] = []
rev all@(x:xs) = aux all []
    where
        aux [] t = t
        aux (x:xs) t = aux xs (x:t)

inclist :: Num a => [a] -> [a]
inclist [] = []
inclist (x:xs) = (x+1) : inclist xs

sumlist :: Num a => [a] -> a 
sumlist [] = 0
sumlist (x:xs) = x + sumlist xs

app :: [a] -> [a] -> [a]
app l1 [] = l1
app [] l2 = l2
app (x:xs) l2 = x : app xs l2

myzip :: [a] -> [b] -> [(a,b)]
myzip [] l2 = []
myzip l1 [] = []
myzip (x1:xs1) (x2:xs2) = (x1, x2) : myzip xs1 xs2

addpairs :: (Num a) => [a] -> [a] -> [a]
addpairs l1 l2 = aux (myzip l1 l2)
         where
             aux [] = []
             aux ((a,b) : xs) = (a+b) : aux xs

ones :: [Integer]
ones = 1 : ones

nats :: [Integer]
nats = [0..]

fib :: [Integer]
fib = 0 : 1 : addpairs fib (tail fib)

add :: Ord a => a -> [a] -> [a]
add a [] = [a]
add a all@(x:xs) | a < x = a : all
                 | a == x = all
                 | a > x = x : add a xs

union :: Ord a => [a] -> [a] -> [a]
union l1 [] = l1
union [] l2 = l2
union l1@(x1:xs1) l2@(x2:xs2) | x1 < x2 = x1 : union xs1 l2
                              | x1 == x2 = x1 : union xs1 xs2
                              | x1 > x2 = x2 : union l1 xs2

intersect :: Ord a => [a] -> [a] -> [a]
intersect l1 [] = [] 
intersect [] l2 = []
intersect l1@(x1:xs1) l2@(x2:xs2) | x1 < x2 = intersect xs1 l2
                                  | x1 == x2 = x1 : intersect xs1 xs2
                                  | x1 > x2 = intersect l1 xs2

powerset :: Ord a => [a] -> [[a]] 
powerset l = aux l []
         where aux [] path = [path]
               aux (x:xs) path = union (aux xs (add x path)) (aux xs path)


inclist' :: Num a => [a] -> [a] 
inclist' l = map (+1) l

sumlist' :: (Num a) => [a] -> a
sumlist' l = foldr (+) 0 l


data List a = Cons a (List a)
            | Nil
  deriving (Show, Eq)

data Exp = IntExp Integer
         | PlusExp [Exp]
         | MultExp [Exp]
  deriving (Show, Eq)

list2cons :: [a] -> List a 
list2cons [] = Nil
list2cons (x:xs) = Cons x (list2cons xs)

cons2list :: List a -> [a]
cons2list Nil = []
cons2list (Cons x xs) = x : cons2list xs

eval :: Exp -> Integer 
eval (IntExp i) = i 
eval (PlusExp []) = 0
eval (PlusExp (x:xs)) = eval x + eval (PlusExp xs)
eval (MultExp []) = 1
eval (MultExp (x:xs)) = eval x * eval (MultExp xs)

list2cons' :: [a] -> List a
list2cons' l = foldr (Cons) Nil l

data BinTree b = Node b (BinTree b) (BinTree b)
               | Leaf
  deriving (Show, Eq)

sumTree :: Num a => BinTree a -> a
sumTree Leaf = 0
sumTree (Node n a b) = n + sumTree a + sumTree b

data SimpVal = IntVal Integer
               | BoolVal Bool
               | StrVal String
               | ExnVal String
  deriving (Show, Eq)

liftIntOp :: (Integer -> Integer -> Integer) -> SimpVal -> SimpVal -> SimpVal
liftIntOp f (IntVal a) (IntVal b) = IntVal (f a b)
liftIntOp _ _ _ = ExnVal "not an IntVal"               