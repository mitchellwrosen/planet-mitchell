module Bits
  ( -- * Bits
    Bits(..)
  , srl
  , toIntegralSized
  , FiniteBits(..)
  , Ranked(..)
  , msb
    -- ** Optics
  , (.|.~)
  , (.&.~)
  , bitAt
  , bits
  ) where

import Data.Bits        (Bits(..), FiniteBits(..), toIntegralSized)
import Data.Bits.Extras (Ranked(..), msb, srl)
import Data.Bits.Lens   (bitAt, bits, (.&.~), (.|.~))
