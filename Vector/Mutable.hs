{-# language CPP #-}

#ifdef USE_VECTOR

module Vector.Mutable
  ( module Data.Vector.Mutable
  ) where

import Data.Vector.Mutable

#else

module Vector.Mutable where

#endif
