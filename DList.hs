{-| This module contains:

    * The 'DList' type and related functionality from @dlist@.

    The following functions are not exported:

    * 'head' (partial)
    * 'tail' (partial)
-}

module DList
  ( -- * DList
    DList(Nil, Cons)
  , fromList
  , toList
  , apply
  , empty
  , singleton
  , cons
  , snoc
  , append
  , concat
  , replicate
  , list
  , unfoldr
  , foldr
  , map
  ) where

import Data.DList
