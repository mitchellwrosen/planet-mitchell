{-# language CPP #-}

#ifdef USE_VECTOR

module Vector.Primitive
  ( module Data.Vector.Primitive
  ) where

import Data.Vector.Primitive

#else

module Vector.Primitive where

#endif
