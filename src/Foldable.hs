module Foldable
  ( -- * Foldable
    Foldable(fold, foldMap, foldr, foldr', foldl', toList, null, length,
      elem, sum, product)
  , foldrM
  , foldlM
  , traverse_
  , for_
  , sequenceA_
  , asum
  , msum
  , concatMap
  , and
  , or
  , all
  , any
  , notElem
  , find
  , foldM
  , foldM_
  , foldMapBy
  , foldBy
  , inits
  , tails
  , insert
  , group
  , groupBy
  , groupWith
  , groupAllWith
    -- * Foldable1
  , Foldable1(..)
  , asum1
  , foldlM1
  , foldrM1
  , for1_
  , intercalate1
  , intercalateMap1
  , sequenceA1_
  , traverse1_
  ) where

import Control.Monad
import Data.Foldable
import Data.List.NonEmpty      (group, groupAllWith, groupBy, groupWith, inits,
                                insert, tails)
import Data.Reflection
import Data.Semigroup.Foldable (Foldable1(fold1, foldMap1, toNonEmpty), asum1,
                                foldlM1, foldrM1, for1_, intercalate1,
                                intercalateMap1, sequenceA1_, traverse1_)
