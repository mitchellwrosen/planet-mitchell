{-# language CPP #-}

module Traversable
  (
    Traversable(..),
    for,
    forM,
    mapAccumL,
    mapAccumR,
    fmapDefault,
    foldMapDefault,
#ifdef USE_REFLECTION
    traverseBy,
    sequenceBy,
#endif
  ) where

#ifdef USE_REFLECTION
import Data.Reflection
#endif
import Data.Traversable
