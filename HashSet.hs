{-# language CPP #-}

#ifdef USE_UNORDERED_CONTAINERS

module HashSet
  ( module Data.HashSet
  ) where

import Data.HashSet

#else

module HashSet where

#endif
