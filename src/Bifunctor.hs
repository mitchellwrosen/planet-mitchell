{-# language CPP #-}

module Bifunctor
  ( -- * Bifunctor
    Bifunctor(..),
#ifdef DEP_LENS
    Swapped(..),
#endif
  ) where

#ifdef DEP_LENS
import Control.Lens.Iso (Swapped(swapped))
#endif
import Data.Bifunctor
