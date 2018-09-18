{-# language CPP #-}

module Decidable
  (
#ifdef DEP_CONTRAVARIANT
    Decidable(..),
    chosen,
    lost,
#endif
#ifdef DEP_CONTRAVARIANT_EXTRAS
    contramany,
#endif
  ) where

#ifdef DEP_CONTRAVARIANT_EXTRAS
import Contravariant.Extras
#endif
#ifdef DEP_CONTRAVARIANT
import Data.Functor.Contravariant.Divisible
#endif
