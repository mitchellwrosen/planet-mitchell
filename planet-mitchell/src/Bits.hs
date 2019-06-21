module Bits
  ( -- * Bits
    Bits(..)
  , toIntegralSized
  , FiniteBits(..)
    -- ** Optics
  , (.|.~)
  , (.&.~)
  , bitAt
  , bits
  ) where

import Data.Bits        (Bits(..), FiniteBits(..), toIntegralSized)
import Data.Bits.Lens   (bitAt, bits, (.&.~), (.|.~))
