{-# language CPP #-}

module Numeric.RealFloat
  ( -- * RealFloat
    RealFloat(..)
  , floatToDigits
    -- ** Show
  , showEFloat
  , showFFloat
  , showGFloat
  , showFFloatAlt
  , showGFloatAlt
  , showFloat
#if MIN_VERSION_base(4,11,0)
  , showHFloat
#endif
  ) where

import GHC.Float
import Numeric
