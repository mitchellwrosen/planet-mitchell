{-# language CPP #-}

#ifdef USE_CONTAINERS

module IntMap
  ( module Data.IntMap.Strict
  ) where

import Data.IntMap.Strict

#else

module IntMap where

#endif
