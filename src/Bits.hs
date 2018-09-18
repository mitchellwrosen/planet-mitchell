{-# language CPP #-}

module Bits
  ( -- * Bits
    Bits(..)
#ifdef DEP_BITS
  , srl
#endif
  , toIntegralSized
  , FiniteBits(..)
#ifdef DEP_BITS
  , Ranked(..)
  , msb
#endif
    -- * Default @Bits@ implementations
  , bitDefault
  , testBitDefault
  , popCountDefault
  ) where

import Data.Bits
#ifdef DEP_BITS
import Data.Bits.Extras
#endif
