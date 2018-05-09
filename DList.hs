{-# language CPP #-}

#ifdef USE_DLIST

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

#else

module DList where

#endif
