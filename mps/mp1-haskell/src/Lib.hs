--- Getting Started
--- ===============

--- Relevant Files
--- --------------

module Lib where


--- Problems
--- ========

--- Recursion
--- ---------

--- ### mytake

-- don't forget to put the type declaration or you will lose points!
mytake :: Int -> [a] ->[a]
mytake _ [] = []
mytake n (x:xs) | n > 0 = x : mytake (n-1) xs
                | otherwise = []

--- ### mydrop

-- don't forget to put the type declaration or you will lose points!
mydrop :: Int -> [a] -> [a] 
mydrop _ [] = []
mydrop n list@(x:xs) | n>0 = mydrop (n-1) xs
                     | otherwise = list
--- ### rev

-- don't forget to put the type declaration or you will lose points!
rev :: [a] -> [a]
rev [] = []
rev (x:xs) = aux (x:xs) []
    where
        aux [] a  = a
        aux (x:xs) a = aux xs (x:a)

--- ### app

-- don't forget to put the type declaration or you will lose points!
app :: [a] -> [a] -> [a]
app l1 [] = l1
app [] l2 = l2
app (x:xs) l2 = x : app xs l2

--- ### inclist

-- don't forget to put the type declaration or you will lose points!
inclist :: Num a => [a] -> [a]
inclist [] = []
inclist (x:xs) = (x+1) : inclist xs

--- ### sumlist

-- don't forget to put the type declaration or you will lose points!
sumlist :: Num a => [a] -> a
sumlist [] = 0
sumlist (x:xs) = x + sumlist xs

--- ### myzip

-- don't forget to put the type declaration or you will lose points!
myzip :: [a] -> [b] -> [(a,b)] 
myzip [] l2 = []
myzip l1 [] = []
myzip (x1:xs1) (x2:xs2) = (x1,x2) : myzip xs1 xs2
--- ### addpairs

-- don't forget to put the type declaration or you will lose points!
addpairs :: (Num a) => [a] -> [a] -> [a] 
addpairs l1 l2 = aux (myzip l1 l2)
         where
            aux [] = []
            aux ((x1,x2):xs) = (x1+x2) : aux xs

--- ### ones

-- don't forget to put the type declaration or you will lose points!
ones :: [Integer]
ones = [1,1..]

--- ### nats

-- don't forget to put the type declaration or you will lose points!
nats :: [Integer]
nats = [0..]

--- ### fib

-- don't forget to put the type declaration or you will lose points!
fib :: [Integer] 
fib = 0 : 1 : addpairs fib (tail fib)

--- Set Theory
--- ----------

--- ### add

-- don't forget to put the type declaration or you will lose points!
add :: Ord a => a -> [a] -> [a]
add n [] = [n]
add n l@(x:xs) | n > x = x : add n xs
               | n == x = l
               | n < x = n : l

--- ### union

-- don't forget to put the type declaration or you will lose points!
union :: Ord a => [a] -> [a] -> [a]
union [] l2 = l2
union l1 [] = l1
union l1@(x1:xs1) l2@(x2:xs2) | x1 < x2 = x1 : union xs1 l2
                              | x1 == x2 = x1 : union xs1 xs2
                              | x1 > x2 = x2 : union l1 xs2

--- ### intersect

-- don't forget to put the type declaration or you will lose points!
intersect :: Ord a => [a] -> [a] -> [a] 
intersect [] l2 = []
intersect l1 [] = []
intersect l1@(x1:xs1) l2@(x2:xs2) | x1 < x2 = intersect xs1 l2
                                  | x1 == x2 = x1 : intersect xs1 xs2
                                  | x1 > x2 = intersect l1 xs2

--- ### powerset

-- don't forget to put the type declaration or you will lose points!
powerset :: Ord a => [a] -> [[a]] 
powerset [] = [[]]
powerset l@(x:xs) = aux l []
         where 
           aux [] path = [path]
           aux (x:xs) path = union (aux xs (add x path)) (aux xs path)

--- Higher Order Functions
--- ----------------------

--- ### inclist'

-- don't forget to put the type declaration or you will lose points!
inclist' :: Num a => [a] -> [a]
inclist' l = map (+1) l

--- ### sumlist'

-- don't forget to put the type declaration or you will lose points!
sumlist' :: (Num a) => [a] -> a 
sumlist' l = foldr (+) 0 l

--- Algebraic Data Types
--- --------------------

data List a = Cons a (List a)
            | Nil
  deriving (Show, Eq)

data Exp = IntExp Integer
         | PlusExp [Exp]
         | MultExp [Exp]
  deriving (Show, Eq)

--- ### list2cons

-- don't forget to put the type declaration or you will lose points!
list2cons :: [a] -> List a 
list2cons [] = Nil
list2cons (x:xs) = Cons x (list2cons xs)

--- ### cons2list

-- don't forget to put the type declaration or you will lose points!
cons2list :: List a -> [a]
cons2list Nil = []
cons2list (Cons x xs) = x : cons2list xs

--- ### eval

-- don't forget to put the type declaration or you will lose points!
eval :: Exp -> Integer 
eval (IntExp x) = x
eval (PlusExp []) = 0
eval (PlusExp (x:xs)) = eval x + eval (PlusExp xs)
eval (MultExp []) = 1
eval (MultExp (x:xs)) = eval x * eval (MultExp xs)

--- ### list2cons'
-- don't forget to put the type declaration or you will lose points!
list2cons' :: [a] -> List a
list2cons' l = foldr (Cons) Nil l

--- ### BinTree

-- BinTree
data BinTree a = Node a (BinTree a) (BinTree a)
            | Leaf 
  deriving (Show, Eq)

--- ### sumTree

-- don't forget to put the type declaration or you will lose points!
sumTree :: Num a => BinTree a -> a
sumTree Leaf = 0
sumTree (Node a b c) = a + sumTree b + sumTree c 

--- ### SimpVal

-- SimpVal
data SimpVal = IntVal Integer
             | BoolVal Bool
             | StrVal String
             | ExnVal String
  deriving (Show, Eq)

--- ### liftIntOp

-- don't forget to put the type declaration or you will lose points!
liftIntOp :: (Integer -> Integer -> Integer) -> SimpVal -> SimpVal -> SimpVal
liftIntOp op (IntVal a) (IntVal b) = IntVal (op a b)
liftIntOp _ _ _ = ExnVal "not an IntVal!"
