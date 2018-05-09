{-# language CPP #-}

#ifdef USE_ERF

module Numeric.InvErf
  ( InvErf(..)
  ) where

import Data.Number.Erf

#else

module Numeric.InvErf where

#endif
