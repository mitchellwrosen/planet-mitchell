{-# language CPP #-}

#ifdef USE_VECTOR

module Vector.Unboxed
  ( module Data.Vector.Unboxed
  ) where

import Data.Vector.Unboxed

#else

module Vector.Unboxed where

#endif
