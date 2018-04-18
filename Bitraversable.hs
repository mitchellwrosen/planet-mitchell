{-| This module contains:

    * The 'Bitraversable' type class and related functionality from @base@.

    The following functions are not re-exported:

    * 'biforM' (use 'bifor' instead)
    * 'bimapM' (use 'bitraverse' instead)
    * 'bisequenceA' (use 'bisequence' instead)
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
