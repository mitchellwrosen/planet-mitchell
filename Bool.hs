{-| This module contains:

    * The "Data.Bool" module from @base@.
    * The 'Any' and 'All' newtypes from @base@, originally exported from
      "Data.Monoid".
    * Boolean type-functions from @base@, originally exported from
      "Data.Type.Bool".
-}

{-# language ExplicitNamespaces #-}

module Bool
  ( -- * Boolean
    Bool(..)
  , (&&)
  , (||)
  , not
  , otherwise
  , bool
    -- * Boolean newtypes
  , All(..)
  , Any(..)
    -- * Boolean type functions
  , If
  , type (&&)
  , type (||)
  , Not
  ) where

import Data.Bool
import Data.Monoid
import Data.Type.Bool
