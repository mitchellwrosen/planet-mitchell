{-# language CPP #-}

module Set
  ( -- * Set
    module Data.Set,
#if DEP_LENS
    -- ** Optics
    setmapped,
    setOf,
#endif
  ) where

import Data.Set
#if DEP_LENS
import Data.Set.Lens (setmapped, setOf)
#endif
