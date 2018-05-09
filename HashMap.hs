{-# language CPP #-}

#ifdef USE_UNORDERED_CONTAINERS

module HashMap
  ( module Data.HashMap.Strict
  ) where

import Data.HashMap.Strict

#else

module HashMap where

#endif
