{-| This module contains:

    * The "Data.Constraint" module from @constraints@.
    * The "Data.Constraint.Forall" module from @constraints@.
-}

{-# language CPP #-}

#ifdef CONSTRAINTS

module Constraint
  ( module Data.Constraint
  , module Data.Constraint.Forall
  ) where

import Data.Constraint
import Data.Constraint.Forall

#else

module Constraint where

#endif
