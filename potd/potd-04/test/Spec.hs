import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.QuickCheck2 (testProperty)

import Test.QuickCheck

import Lib

main :: IO ()
main = defaultMain tests

tests = [
        testGroup "Sum Digits Function" [
                testProperty "Output is positive" (forAll randList sumDigitsReturnsPos)
           ]
        , testGroup "Validate Function" [
                testProperty "Output is of type bool" (forAll posInputs validateBoolean)
           ]
      ]

randInputs = [ arbitrary `suchThat` (\x -> x >= 0 && x <= 20)]
randList = listOf1 randInputs

posInputs = choose (1, 10000)

sumDigitsReturnsPos :: [Integer] -> Bool
sumDigitsReturnsPos x = sumDigits > 0

validateBoolean :: Integer -> Bool
validateBoolean x = validate x == True | validate x == False
