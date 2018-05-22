{-# language CPP #-}

module Foldable
  (
    Foldable(fold, foldMap, foldr, foldr', foldl', toList, null, length,
      elem, sum, product),
    foldrM,
    foldlM,
    traverse_,
    for_,
    sequenceA_,
    asum,
    msum,
    concatMap,
    and,
    or,
    all,
    notElem,
    find,
    foldM,
    foldM_,
#ifdef USE_REFLECTION
    foldMapBy,
    foldBy,
#endif
  ) where

import Control.Monad
import Data.Foldable
#ifdef USE_REFLECTION
import Data.Reflection
#endif
