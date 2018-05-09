{-# language CPP #-}

#ifdef USE_CONTAINERS

module Sequence
  ( module Data.Sequence
  ) where

import Data.Sequence

#else

module Sequence where

#endif
