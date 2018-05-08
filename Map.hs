{-# language CPP #-}

#ifdef CONTAINERS

module Map
  ( module Data.Map.Strict
  ) where

import Data.Map.Strict

#else

module Map where

#endif
