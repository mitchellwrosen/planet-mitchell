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
