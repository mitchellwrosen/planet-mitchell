{-# language CPP #-}

module Monoid
  ( -- * Monoid
    Monoid(mconcat, mempty),
#ifdef DEP_SEMIGROUPS
    gmempty,
#endif
  ) where

import Data.Monoid
#ifdef DEP_SEMIGROUPS
import Data.Semigroup.Generic
#endif
