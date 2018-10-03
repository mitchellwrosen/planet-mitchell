module Num.Pi
  ( ExactPi(..)
  , approximateValue
  , isZero
  , isExact
  , isExactZero
  , isExactOne
  , areExactlyEqual
  , isExactInteger
  , toExactInteger
  , isExactRational
  , toExactRational
  , rationalApproximations
  ) where

import Data.ExactPi (ExactPi(Approximate, Exact), approximateValue,
                     areExactlyEqual, isExact, isExactInteger, isExactOne,
                     isExactRational, isExactZero, isZero,
                     rationalApproximations, toExactInteger, toExactRational)
