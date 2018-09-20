module Bounded
  ( -- * Bounded
    Bounded(..)
  , Lower(..)
  , Upper(..)
    -- ** Newtypes
  , Bound(..)
  ) where

import Data.Semilattice.Bound
import Data.Semilattice.Lower
import Data.Semilattice.Upper
import GHC.Enum
