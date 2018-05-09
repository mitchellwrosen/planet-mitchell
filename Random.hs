{-# language CPP #-}

#ifdef USE_MWC_RANDOM

module Random
  ( module System.Random.MWC
  , module System.Random.MWC.CondensedTable
  , module System.Random.MWC.Distributions
  ) where

import System.Random.MWC
import System.Random.MWC.CondensedTable
import System.Random.MWC.Distributions

#else

module Random where

#endif
