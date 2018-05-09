{-# language CPP #-}

#ifdef USE_HEAPS

module Heap
  ( module Data.Heap
  ) where

import Data.Heap

#else

module Heap where

#endif
