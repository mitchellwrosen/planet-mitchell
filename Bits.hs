{-| This module contains:

    * The "Data.Bits" module from 'base'.
    * The 'Ranked' type class from @bits@.
    * The 'srl' and 'msb' functions from @bits@.
-}

{-# language CPP #-}

module Bits
  ( -- * Bits
    Bits(..)
#ifdef USE_BITS
  , srl
#endif
  , toIntegralSized
  , FiniteBits(..)
#ifdef USE_BITS
  , Ranked(..)
  , msb
#endif
    -- * Default @Bits@ implementations
  , bitDefault
  , testBitDefault
  , popCountDefault
  ) where

import Data.Bits
#ifdef USE_BITS
import Data.Bits.Extras
#endif
