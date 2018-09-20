{-# language CPP #-}

module Functor
  ( -- * Functor
    Functor(..)
  , (<$>)
  , ($>)
#if MIN_VERSION_base(4,11,0)
  , (<&>)
#endif
  , void
  , unzip
    -- ** Optics
  , mapped
    -- * MFunctor
  , MFunctor(..)
  ) where

import Control.Lens.Setter (mapped)
import Control.Monad.Morph (MFunctor, hoist)
import Data.Functor (Functor(fmap, (<$)), (<$>), ($>), void)
#if MIN_VERSION_base(4,11,0)
import Data.Functor ((<&>))
#endif
import Data.List.NonEmpty (unzip)
