module Lib
    ( signum
    , if'
    ) where

import Prelude hiding (signum)

-- Your code here!

signum :: Int -> Int
signum num
      | (num == 0) = 0
      | (num > 0) = 1
      | (num < 0) = -1

if' :: Bool -> a -> a -> a
if' True x _ = x
if' False _ y = y
