module Lib
    (Tree(TOp,TInt)
    ,swap
    ,calc) where

data Tree =
    TInt Integer
  | TOp String Tree Tree
  deriving (Eq)

instance Show Tree where
   show (TInt i) = show i
   show (TOp s t1 t2) = "(" ++ s ++ " " ++ show t1 
                            ++ " " ++ show t2 ++ ")"

-- Your code here!
-- Feel free to write helper functions.

swap :: Tree -> Tree
swap = undefined

calc :: Tree -> Integer
calc = undefined
