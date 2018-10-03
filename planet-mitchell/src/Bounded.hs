module Bounded
  ( -- * Bounded
    Bounded(..)
    -- * Lower
  , Lower(..)
    -- * Upper
  , Upper(..)
    -- * Newtypes
  , Bound(..)
  ) where

import Data.Semilattice.Bound
import Data.Semilattice.Lower
import Data.Semilattice.Upper
import GHC.Enum (Bounded(maxBound, minBound))
