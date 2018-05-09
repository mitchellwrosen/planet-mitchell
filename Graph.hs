{-# language CPP #-}

#ifdef USE_CONTAINERS

module Graph
  ( module Data.Graph
  ) where

import Data.Graph

#else

module Graph where

#endif
