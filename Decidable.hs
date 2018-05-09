{-# language CPP #-}

module Decidable
  (
#ifdef USE_CONTRAVARIANT
    Decidable(..),
    chosen,
    lost,
#endif
#ifdef USE_CONTRAVARIANT_EXTRAS
    contramany,
#endif
  ) where

#ifdef USE_CONTRAVARIANT_EXTRAS
import Contravariant.Extras
#endif
#ifdef USE_CONTRAVARIANT
import Data.Functor.Contravariant.Divisible
#endif
