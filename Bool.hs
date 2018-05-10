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
