{-# language CPP #-}

module Divisible
  (
#ifdef DEP_CONTRAVARIANT
    Divisible(..),
    divided,
    conquered,
#endif
#ifdef DEP_CONTRAVARIANT_EXTRAS
    contrazip3,
    contrazip4,
    contrazip5,
    Supplied(..)
#endif
  ) where

#ifdef DEP_CONTRAVARIANT_EXTRAS
import Contravariant.Extras
#endif
#ifdef DEP_CONTRAVARIANT
import Data.Functor.Contravariant.Divisible
#endif
