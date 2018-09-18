{-# language CPP #-}

module Set.Hash
  ( -- * HashSet
    module Data.HashSet,
#ifdef DEP_LENS
    -- ** Optics
    setOf,
#endif
  ) where

import Data.HashSet
#ifdef DEP_LENS
import Data.HashSet.Lens (setOf)
#endif
