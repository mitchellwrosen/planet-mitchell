{-# language CPP #-}

#ifdef USE_CONTAINERS

module Set
  ( module Data.Set
  ) where

import Data.Set

#else

module Set where

#endif
