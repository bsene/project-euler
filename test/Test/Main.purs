module Test.Main where

import Prelude

import Data.Foldable (sum)
import Effect (Effect)
import Main (multiples)
import Test.Unit (suite, test)
import Test.Unit.Assert (shouldEqual)
import Test.Unit.Main (runTest)

main :: Effect Unit
main = runTest do
  suite "Project Euler" do
    suite "Ex1: sum all multiples of 3/5" do
      test "all multiples below 10" do
        (sum (multiples 10)) `shouldEqual` 23

      test "all multiples below 1000" do
        (sum (multiples 1000)) `shouldEqual` 233168
      