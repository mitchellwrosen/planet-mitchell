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
    inits,
    tails,
    insert,
    group,
    groupBy,
    groupWith,
    groupAllWith,
  ) where

import Control.Monad
import Data.Foldable
import Data.List.NonEmpty
  (group, groupAllWith, groupBy, groupWith, inits, insert, tails)
#ifdef USE_REFLECTION
import Data.Reflection
#endif
