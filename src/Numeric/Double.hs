{-# language CPP #-}

module Numeric.Double
  (
    Double,
#ifdef DEP_DOUBLE_CONVERSION
    toExponential,
    toFixed,
    toPrecision,
    toShortest,
#endif
  ) where

import GHC.Float
#ifdef DEP_DOUBLE_CONVERSION
import Data.Double.Conversion.Text
  (toExponential, toFixed, toPrecision, toShortest)
#endif
