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
#ifdef DEP_MMORPH
    -- * MFunctor
    MFunctor(..),
#endif
  ) where

#ifdef DEP_MMORPH
import Control.Monad.Morph
#endif
import Data.Functor
import Data.List.NonEmpty (unzip)
