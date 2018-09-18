{-# language CPP #-}

module Numeric.Complex
  ( -- * Complex
    Complex,
    realPart,
    imagPart,
    mkPolar,
    cis,
    polar,
    magnitude,
    phase,
    conjugate,
#ifdef DEP_LENS
    -- ** Optics
    _realPart,
    _imagPart,
    _polar,
    _magnitude,
    _phase,
    _conjugate,
#endif
  ) where

import Data.Complex
#ifdef DEP_LENS
import Data.Complex.Lens
#endif
