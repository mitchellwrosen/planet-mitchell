{-| This module contains:

    * The 'Bifoldable' type class and related functionality from @base@,
      originally exported from "Data.Bifoldable".
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
