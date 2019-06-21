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
  , foldrM
  , for_
  , group
  , groupAllWith
  , groupBy
  , groupWith
  , inits
  , insert
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
    -- * Bifoldable
  , Bifoldable(..)
  , bifoldr'
  , bifoldrM
  , bifoldl'
  , bifoldlM
  , bitraverse_
  , bifor_
  , bisequence_
  , biasum
  , biList
  , binull
  , bilength
  , bielem
  , bisum
  , biproduct
  , biconcatMap
  , biand
  , bior
  , biany
  , biall
  , binotElem
  , bifind
    -- * Bifoldable1
  , Bifoldable1(..)
  , bitraverse1_
  , bifor1_
  , bisequenceA1_
  ) where

import Control.Monad             (foldM, foldM_)
import Data.Bifoldable           (Bifoldable(bifold, bifoldMap, bifoldr),
                                  biList, biall, biand, biany, biasum,
                                  biconcatMap, bielem, bifind, bifoldl',
                                  bifoldlM, bifoldr', bifoldrM, bifor_,
                                  bilength, binotElem, binull, bior, biproduct,
                                  bisequence_, bisum, bitraverse_)
import Data.Foldable
import Data.List.NonEmpty        (group, groupAllWith, groupBy, groupWith,
                                  inits, insert, tails)
import Data.Reflection
import Data.Semigroup.Bifoldable (Bifoldable1(bifold1, bifoldMap1), bifor1_,
                                  bisequenceA1_, bitraverse1_)
import Data.Semigroup.Foldable   (Foldable1(fold1, foldMap1, toNonEmpty), asum1,
                                  foldlM1, foldrM1, for1_, intercalate1,
                                  intercalateMap1, sequenceA1_, traverse1_)
