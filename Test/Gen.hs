{-# language CPP #-}

#ifdef USE_HEDGEHOG

module Test.Gen
  ( module Hedgehog.Gen
  ) where

import Hedgehog.Gen

#else

module Test.Gen where

#endif
