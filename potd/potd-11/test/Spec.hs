module Spec ( main ) where
import Prelude hiding (id, (.))
import Control.Category

import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.QuickCheck2 (testProperty)
import Test.QuickCheck

import Control.Monad.Trans.State.Lazy (State)
import qualified Control.Monad.Trans.State.Lazy as S
import Data.IntSet (IntSet)
import qualified Data.IntSet as IS
import Data.Map.Lazy (Map)
import qualified Data.Map.Lazy as M

import Lib

main :: IO ()
main = defaultMain tests

tests =
  [ testGroup
      "`zoom`"
      [ testProperty
          "`zoom` behaves properly on a simple lens."
          prop_zoom_basic_behavior
      , testProperty
          "`zoom` behaves properly on a complex lens."
          prop_zoom_advanced_behavior
      ]
  ]

-- Setup
testLensA :: Lens (Integer, String, IntSet) IntSet
testLensA = Lens $ \(n, s, nz) -> (nz, \nz' -> (n, s, nz'))

testLensB :: Int -> Lens IntSet Bool
testLensB m =
  Lens $ \nz ->
    ( IS.member m nz
    , \p ->
        (if p
           then IS.insert
           else IS.delete)
          m
          nz)

testLensBoA :: Int -> Lens (Integer, String, IntSet) Bool
testLensBoA m =
  Lens $ \(n, s, nz) ->
    ( IS.member m nz
    , \p ->
        if p
          then (n, s, IS.insert m nz)
          else (n, s, IS.delete m nz))

-- Tests
prop_zoom_basic_behavior ::
     (Integer, String, IntSet) -> Fun IntSet (Ordering, IntSet) -> Property
prop_zoom_basic_behavior v@(n, s, nz) (Fn st) =
  S.runState (zoom testLensA (S.state st)) v === (q, (n, s, nz'))
  where
    (q, nz') = st nz

prop_zoom_advanced_behavior ::
     Int -> IntSet -> Fun Bool (Ordering, Bool) -> Property
prop_zoom_advanced_behavior m nz (Fn st) =
  S.runState (zoom (testLensB m) (S.state st)) nz ===
  ( q
  , (if p
       then IS.insert
       else IS.delete)
      m
      nz)
  where
    (q, p) = st (IS.member m nz)
