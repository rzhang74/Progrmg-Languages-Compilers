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
-- swap = undefined
swap (TInt i) = (TInt i)
swap (TOp s t1 t2) = TOp s (swap t2) (swap t1)

calc :: Tree -> Integer
calc (TInt i) = i
calc (TOp s t1 t2) | s == "*" = (*) (calc t1) (calc t2)
                   | s == "-" = (-) (calc t1) (calc t2)
                   | s == "+" = (+) (calc t1) (calc t2)
