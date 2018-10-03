module Num.Num
  ( Num(..)
  , (^)
  , subtract
    -- ** Read
  , readInt
  , readDec
  , readOct
  , readHex
  ) where

import GHC.Num (Num(..), subtract)
import GHC.Real ((^))
import Numeric
