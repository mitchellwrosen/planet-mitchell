{-| This module contains:

    * The "Data.Bits" module from 'base'.
    * The 'Ranked' type class from @bits@.
    * The 'srl' and 'msb' functions from @bits@.
-}

{-# language CPP #-}

module Bits
  ( -- * Bits
    Bits(..)
#ifdef BITS
  , srl
#endif
  , toIntegralSized
  , FiniteBits(..)
#ifdef BITS
  , Ranked(..)
  , msb
#endif
    -- * Default @Bits@ implementations
  , bitDefault
  , testBitDefault
  , popCountDefault
  ) where

import Data.Bits
#ifdef BITS
import Data.Bits.Extras
#endif
