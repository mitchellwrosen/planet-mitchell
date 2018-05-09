{-| This module contains:

    * Constraint types and functions from @constraints@.
-}

{-# language CPP #-}

#ifdef USE_CONSTRAINTS

module Constraint
  ( module Data.Constraint
  , module Data.Constraint.Forall
  ) where

import Data.Constraint
import Data.Constraint.Forall

#else

module Constraint where

#endif
