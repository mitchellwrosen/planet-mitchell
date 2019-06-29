module Alg.Compactable
  ( Compactable(..)
  , fforMaybe
  , fforEither
  , CompactFold(..)
  , fforFold
  , fforBifold
  ) where

import Control.Compactable (CompactFold(applyBifold, applyFold, bindBifold, bindFold, compactFold, fmapBifold, fmapFold, separateFold, traverseBifold, traverseFold),
                            Compactable(applyEither, applyMaybe, bindEither, bindMaybe, compact, filter, fmapEither, fmapMaybe, partition, separate, traverseEither, traverseMaybe),
                            fforBifold, fforEither, fforFold, fforMaybe)
