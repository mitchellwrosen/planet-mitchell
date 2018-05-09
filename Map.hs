{-# language CPP #-}

#ifdef USE_CONTAINERS

module Map
  ( module Data.Map.Strict
  ) where

import Data.Map.Strict

#else

module Map where

#endif
