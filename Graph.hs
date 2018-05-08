{-# language CPP #-}

#ifdef CONTAINERS

module Graph
  ( module Data.Graph
  ) where

import Data.Graph

#else

module Graph where

#endif
