{-# language CPP #-}

module Divisible
  (
#ifdef CONTRAVARIANT
    Divisible(..),
    divided,
    conquered,
#endif
#ifdef CONTRAVARIANT_EXTRAS
    contrazip3,
    contrazip4,
    contrazip5,
    Supplied(..)
#endif
  ) where

#ifdef CONTRAVARIANT_EXTRAS
import Contravariant.Extras
#endif
#ifdef CONTRAVARIANT
import Data.Functor.Contravariant.Divisible
#endif
