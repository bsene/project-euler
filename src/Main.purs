module Main
  ( multiples
  )
  where

import Prelude

import Data.List (List, filter, range)

multipleOf3 :: Int -> Boolean
multipleOf3 n = n `mod` 3 == 0

multipleOf5 :: Int -> Boolean
multipleOf5 n = n `mod` 5 == 0

multiples :: Int -> List Int
multiples max = filter (\n -> multipleOf3 n || multipleOf5 n) (range 0 (max - 1))


