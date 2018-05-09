{-# language CPP #-}

#ifdef USE_VECTOR

module Vector.Storable
  ( module Data.Vector.Storable
  ) where

import Data.Vector.Storable

#else

module Vector.Storable where

#endif
