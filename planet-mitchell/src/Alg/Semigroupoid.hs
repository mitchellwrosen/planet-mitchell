module Alg.Semigroupoid
  ( -- * Semigroupoid
    Semigroupoid(..)
    -- ** Newtypes
  , Semi(..)
  , Dual(..)
  ) where

import Data.Semigroupoid      (Semi(Semi, getSemi), Semigroupoid(o))
import Data.Semigroupoid.Dual (Dual(Dual, getDual))
