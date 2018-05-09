{-# language CPP #-}

#ifdef USE_ERF

module Numeric.Erf
  ( Erf(..)
  ) where

import Data.Number.Erf

#else

module Numeric.Erf where

#endif
