{-# language CPP #-}

#ifdef USE_HEDGEHOG

module Test.Range
  ( module Hedgehog.Range
  ) where

import Hedgehog.Range

#else

module Test.Range where

#endif
