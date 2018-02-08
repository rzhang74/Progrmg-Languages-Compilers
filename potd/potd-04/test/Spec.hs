import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.QuickCheck2 (testProperty)

import Test.QuickCheck

import Lib

main :: IO ()
main = defaultMain tests

tests = [
        testGroup "Sum Digits Function" [
                testProperty "Output is non-negative" (forAll randList sumDigitsNonNeg)
                -- Add your own tests here!
           ]
        , testGroup "Validate Function" [
                testProperty "Output is true when the sum % 10 == 0" (forAll posInputs validateMod)
                -- Add your own tests here!
           ]
      ]

posInputs = choose (1, 10000)

randDigit :: Gen Integer
randDigit = choose (0,9)

randList = listOf randDigit

sumDigitsNonNeg :: [Integer] -> Bool
sumDigitsNonNeg x = sumDigits x >= 0

validateMod :: Integer -> Bool
validateMod x = x `mod` 10 == 0
