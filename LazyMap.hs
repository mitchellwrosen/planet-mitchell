{-# language CPP #-}

#ifdef USE_CONTAINERS

module LazyMap
  ( module Data.Map.Lazy
  ) where

import Data.Map.Lazy

#else

module LazyMap where

#endif
