{-# language CPP #-}

module Decidable
  (
#ifdef CONTRAVARIANT
    Decidable(..),
    chosen,
    lost,
#endif
#ifdef CONTRAVARIANT_EXTRAS
    contramany,
#endif
  ) where

#ifdef CONTRAVARIANT_EXTRAS
import Contravariant.Extras
#endif
#ifdef CONTRAVARIANT
import Data.Functor.Contravariant.Divisible
#endif
