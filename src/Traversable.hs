module Traversable
  ( -- * Traversable
    Traversable(..)
  , for
  , mapAccumL
  , mapAccumR
  , traverseBy
  , sequenceBy
    -- * Default @Functor@ implementation
  , fmapDefault
    -- * Default @Foldable@ implementation
  , foldMapDefault
  ) where

import Data.Reflection (sequenceBy, traverseBy)
import Data.Traversable
  (Traversable(traverse, sequenceA), for, mapAccumL, mapAccumR, fmapDefault,
    foldMapDefault)
