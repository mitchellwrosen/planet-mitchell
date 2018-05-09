{-# language CPP #-}

module Monoid
  ( -- * Monoid
    Monoid(mempty)
#ifdef USE_SEMIGROUPS
  , gmempty
#endif
  ) where

import Data.Monoid
#ifdef USE_SEMIGROUPS
import Data.Semigroup.Generic
#endif
