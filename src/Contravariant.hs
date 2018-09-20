{-# language CPP #-}

module Contravariant
  ( -- * Contravariant
    Contravariant(..),
    phantom,
    (>$<),
    (>$$<),
    ($<),
#ifdef DEP_LENS
    -- ** Optics
    contramapped
#endif
  ) where

#ifdef DEP_LENS
import Control.Lens.Setter (contramapped)
#endif
import Data.Functor.Contravariant
