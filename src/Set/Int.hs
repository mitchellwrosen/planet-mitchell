{-# language CPP #-}

module Set.Int
  ( -- * IntSet
    module Data.IntSet,
#ifdef DEP_LENS
    -- ** Optics
    members,
    setmapped,
    setOf,
#endif
  ) where

import Data.IntSet
#ifdef DEP_LENS
import Data.IntSet.Lens (members, setmapped, setOf)
#endif
