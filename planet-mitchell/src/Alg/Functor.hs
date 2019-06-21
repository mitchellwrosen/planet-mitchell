{-# LANGUAGE CPP #-}

module Alg.Functor
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
    -- * Apply
  , Apply(..)
  , liftF3
    -- ** Newtypes
  , MaybeApply(..)
  , Static(..)
    -- * Alt
  , Alt(..)
    -- * Plus
  , Plus(..)
    -- * Bind
  , Bind(..)
  , (-<<)
    -- * Extend
  , Extend(..)
    -- * Bifunctor
  , Bifunctor(..)
  , Swapped(..)
    -- * Biapply
  , Biapply(..)
  ) where

import Control.Lens.Iso     (Swapped(swapped))
import Control.Lens.Setter  (mapped)
import Data.Bifunctor
import Data.Bifunctor.Apply (Biapply((.>>), (<<.), (<<.>>)))
import Data.Functor         (Functor(fmap, (<$)), void, ($>), (<$>))
#if MIN_VERSION_base(4,11,0)
import Data.Functor ((<&>))
#endif
import Data.Functor.Alt         (Alt((<!>)))
import Data.Functor.Apply       (Apply(liftF2, (.>), (<.), (<.>)),
                                 MaybeApply(MaybeApply, runMaybeApply), liftF3)
import Data.Functor.Bind        (Bind(join, (>>-)), (-<<))
import Data.Functor.Extend      (Extend(duplicated, extended))
import Data.Functor.Plus        (Plus(zero))
import Data.List.NonEmpty       (unzip)
import Data.Semigroupoid.Static (Static(Static, runStatic))
