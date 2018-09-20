module Foldable
  (
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
  ) where

import Control.Monad
import Data.Foldable
import Data.List.NonEmpty (group, groupAllWith, groupBy, groupWith, inits,
                           insert, tails)
import Data.Reflection
