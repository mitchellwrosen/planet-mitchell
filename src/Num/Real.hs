module Num.Real
  ( -- * Real
    Real(..)
  , div'
  , mod'
  , divMod'
  , realToFrac
    -- ** Show
  , showSigned
    -- ** Read
  , readSigned
  ) where

import Data.Fixed (div', divMod', mod')
import GHC.Real   (Real(..), realToFrac, showSigned)
import Numeric    (readSigned)
