{-| This module contains:

    * The 'Bitraversable' type class and related functionality from @base@.

-}

module Bitraversable
  ( -- * Bitraversable
    Bitraversable(..)
  , bisequence
  , bifor
  , bimapAccumL
  , bimapAccumR
    -- * Default @Bifoldable@ implementations
  , bimapDefault
  , bifoldMapDefault
  ) where

import Data.Bitraversable
