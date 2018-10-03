module Foldable
  ( -- * Foldable
    Foldable(fold, foldMap, foldr, foldr', foldl', toList, null, length,
      elem, sum, product)
  , all
  , and
  , any
  , asum
  , concatMap
  , find
  , foldBy
  , foldM
  , foldM_
  , foldMapBy
  , foldlM
  , foldr1May
  , foldrM
  , for_
  , group
  , groupAllWith
  , groupBy
  , groupWith
  , inits
  , insert
  , maximumByMay
  , maximumMay
  , minimumByMay
  , minimumMay
  , msum
  , notElem
  , or
  , sequenceA_
  , tails
  , traverse_
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
import Safe.Foldable           (foldr1May, maximumByMay, maximumMay,
                                minimumByMay, minimumMay)
