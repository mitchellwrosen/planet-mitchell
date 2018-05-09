{-# language CPP #-}

#if USE_HEDGEHOG

module Test
  ( module Hedgehog
  ) where

import Hedgehog

#else

module Test where

#endif
