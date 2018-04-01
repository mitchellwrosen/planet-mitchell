module Foldable
  ( Foldable(fold, foldMap, foldr, foldr', foldl', toList, null, length,
      elem, sum, product)
  , foldrM
  , foldlM
  , traverse_
  , for_
  , sequenceA_
  , asum
  , mapM_
  , forM_
  , sequence_
  , msum
  , concat
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
  ) where

import Control.Monad
import Data.Foldable
import Data.Reflection
