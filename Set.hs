{-# language CPP #-}

#ifdef CONTAINERS

module Set
  ( module Data.Set
  ) where

import Data.Set

#else

module Set where

#endif
