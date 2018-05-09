{-# language CPP #-}

#ifdef USE_CONTAINERS

module Tree
  ( module Data.Tree
  ) where

import Data.Tree

#else

module Tree where

#endif
