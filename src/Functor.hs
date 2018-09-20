{-# language CPP #-}

module Functor
  ( -- * Functor
    Functor(..),
    (<$>),
    ($>),
#if MIN_VERSION_base(4,11,0)
    (<&>),
#endif
    void,
    unzip,
#ifdef DEP_LENS
    -- ** Optics
    mapped,
#endif
#ifdef DEP_MMORPH
    -- * MFunctor
    MFunctor(..),
#endif
  ) where

#ifdef DEP_LENS
import Control.Lens.Setter (mapped)
#endif
#ifdef DEP_MMORPH
import Control.Monad.Morph (MFunctor, hoist)
#endif
import Data.Functor (Functor(fmap, (<$)), (<$>), ($>), void)
#if MIN_VERSION_base(4,11,0)
import Data.Functor ((<&>))
#endif
import Data.List.NonEmpty (unzip)
