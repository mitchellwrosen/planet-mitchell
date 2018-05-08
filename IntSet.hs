{-# language CPP #-}

#ifdef CONTAINERS

module IntSet
  ( module Data.IntSet
  ) where

import Data.IntSet

#else

module IntSet where

#endif
