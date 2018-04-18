{-| This module contains:

    * The "Data.Bits" module from 'base'.
    * The 'Ranked' type class from @bits@.
    * The 'srl' and 'msb' functions from @bits@.
-}

module Bits
  ( -- * Bits
    Bits(..)
  , srl
  , toIntegralSized
  , FiniteBits(..)
  , Ranked(..)
  , msb
    -- * Default @Bits@ implementations
  , bitDefault
  , testBitDefault
  , popCountDefault
  ) where

import Data.Bits
import Data.Bits.Extras
