{-# language CPP #-}

#ifdef USE_VECTOR

module Vector
  ( module Data.Vector
  ) where

import Data.Vector

#else

module Vector where

#endif
