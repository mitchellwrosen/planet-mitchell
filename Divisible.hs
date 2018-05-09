{-# language CPP #-}

module Divisible
  (
#ifdef USE_CONTRAVARIANT
    Divisible(..),
    divided,
    conquered,
#endif
#ifdef USE_CONTRAVARIANT_EXTRAS
    contrazip3,
    contrazip4,
    contrazip5,
    Supplied(..)
#endif
  ) where

#ifdef USE_CONTRAVARIANT_EXTRAS
import Contravariant.Extras
#endif
#ifdef USE_CONTRAVARIANT
import Data.Functor.Contravariant.Divisible
#endif
