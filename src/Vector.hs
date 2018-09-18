{-# language CPP #-}

module Vector
  ( -- * Vector
    module Data.Vector,
#ifdef DEP_LENS
    -- ** Optics
    toVectorOf,
    vector,
    forced,
    sliced,
#endif
  ) where

import Data.Vector
#ifdef DEP_LENS
import Data.Vector.Lens (forced, sliced, toVectorOf, vector)
#endif
