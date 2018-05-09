{-# language CPP #-}

#ifdef ERF

module Numeric.Erf
  ( Erf(..)
  ) where

import Data.Number.Erf

#else

module Numeric.Erf where

#endif
