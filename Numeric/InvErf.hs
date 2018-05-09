{-# language CPP #-}

#ifdef ERF

module Numeric.InvErf
  ( InvErf(..)
  ) where

import Data.Number.Erf

#else

module Numeric.InvErf where

#endif
