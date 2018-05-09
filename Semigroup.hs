{-# language CPP #-}

module Semigroup
  ( -- * Semigroup
    Semigroup(..)
#ifdef USE_SEMIGROUPS
  , gmappend
#endif
    -- * Newtypes
  , First(..)
  , Last(..)
  , Dual(..)
  , cycle1
  ) where

import Data.Semigroup
#ifdef USE_SEMIGROUPS
import Data.Semigroup.Generic
#endif
