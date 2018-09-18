{-# language CPP #-}

module Bounded
  ( -- * Bounded
    Bounded(..),
#ifdef DEP_SEMILATTICES
    Lower(..),
    Upper(..),
    -- ** Newtypes
    Bound(..),
#endif
  ) where

#ifdef DEP_SEMILATTICES
import Data.Semilattice.Bound
import Data.Semilattice.Lower
import Data.Semilattice.Upper
#endif
import GHC.Enum
