{-| This module contains:

    * The 'Bifoldable' type class and related functionality from @base@.

    The following functions are not re-exported:

    * 'biconcat' (use 'biasum' instead)
    * 'bifoldl' (use 'bifoldl'' instead)
    * 'bifoldl1' (partial)
    * 'bifoldr1' (partial)
    * 'biforM_' (use 'bifor_' instead)
    * 'bimapM'_ (use 'bitraverse_' instead)
    * 'bimaximum' (partial)
    * 'bimaximumBy' (partial)
    * 'biminimum' (partial)
    * 'biminimumBy' (partial)
    * 'bimsum' (use 'biasum' instead)
    * 'bisequenceA_' (use 'bisequence_' instead)
-}

module Bifoldable
  ( -- * Bifoldable
    Bifoldable(bifold, bifoldMap, bifoldr)
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
  ) where

import Data.Bifoldable
