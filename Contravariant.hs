{-# language CPP #-}

#ifdef USE_CONTRAVARIANT

module Contravariant
  ( -- * Contravariant
    Contravariant(..)
  , phantom
  , (>$<)
  , (>$$<)
  , ($<)
  ) where

import Data.Functor.Contravariant

#else

module Contravariant where

#endif
