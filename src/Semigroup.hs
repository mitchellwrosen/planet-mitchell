{-# language CPP #-}

module Semigroup
  ( -- * Semigroup
    Semigroup(..),
#ifdef DEP_SEMIGROUPS
    gmappend,
#endif
    -- * Newtypes
    First(..),
    Last(..),
    Dual(..),
    diff,
    cycle1,
  ) where

import Data.Semigroup
#ifdef DEP_SEMIGROUPS
import Data.Semigroup.Generic
#endif
