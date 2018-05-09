{-# language CPP #-}

#ifdef USE_CONTAINERS

module IntSet
  ( module Data.IntSet
  ) where

import Data.IntSet

#else

module IntSet where

#endif
