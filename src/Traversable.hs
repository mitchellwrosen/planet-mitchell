module Traversable
  ( -- * Traversable
    Traversable(..)
  , for
  , mapAccumL
  , mapAccumR
  , traverseBy
  , sequenceBy
    -- ** Default @Functor@ implementation
  , fmapDefault
    -- ** Default @Foldable@ implementation
  , foldMapDefault
    -- * Traversable1
  , Traversable1(..)
  ) where

import Data.Reflection            (sequenceBy, traverseBy)
import Data.Semigroup.Traversable (Traversable1(sequence1, traverse1))
import Data.Traversable           (Traversable(sequenceA, traverse),
                                   fmapDefault, foldMapDefault, for, mapAccumL,
                                   mapAccumR)
