{-| This module contains:

    * The 'Bifunctor' type class from @base@.
-}

module Bifunctor
  ( -- * Bifunctor
    Bifunctor(..)
    -- * Optics
  , bimapping
  , firsting
  , seconding
  ) where

import Control.Lens.Iso
import Data.Bifunctor
