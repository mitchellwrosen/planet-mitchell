{-# language CPP #-}

module Monoid
  ( -- * Monoid
    Monoid(mconcat, mempty),
#ifdef USE_SEMIGROUPS
    gmempty,
#endif
  ) where

import Data.Monoid
#ifdef USE_SEMIGROUPS
import Data.Semigroup.Generic
#endif
