{-# language CPP #-}

#ifdef USE_VECTOR

module Vector.Generic
  ( module Data.Vector.Generic
  ) where

import Data.Vector.Generic

#else

module Vector.Generic where

#endif
