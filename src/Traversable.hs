{-# language CPP #-}

module Traversable
  ( -- * Traversable
    Traversable(..),
    for,
    mapAccumL,
    mapAccumR,
#ifdef DEP_REFLECTION
    traverseBy,
    sequenceBy,
#endif
    -- * Default @Functor@ implementation
    fmapDefault,
    -- * Default @Foldable@ implementation
    foldMapDefault,
  ) where

#ifdef DEP_REFLECTION
import Data.Reflection (sequenceBy, traverseBy)
#endif
import Data.Traversable
  (Traversable(traverse, sequenceA), for, mapAccumL, mapAccumR, fmapDefault,
    foldMapDefault)
