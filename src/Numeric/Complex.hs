module Numeric.Complex
  ( -- * Complex
    Complex
  , realPart
  , imagPart
  , mkPolar
  , cis
  , polar
  , magnitude
  , phase
  , conjugate
    -- ** Optics
  , _realPart
  , _imagPart
  , _polar
  , _magnitude
  , _phase
  , _conjugate
  ) where

import Data.Complex
import Data.Complex.Lens
