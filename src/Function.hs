{-# language CPP #-}

module Function
  (
    ($),
    ($!),
    (&),
    asTypeOf,
    const,
    fix,
    flip,
#ifdef DEP_EXTRA
    loop,
#endif
    on,
    until,
    Endo(..),
#ifdef DEP_CONTRAVARIANT
    Op(..),
#endif
  ) where

#ifdef DEP_EXTRA
import Control.Monad.Extra (loop)
#endif
import Data.Function
#ifdef DEP_CONTRAVARIANT
import Data.Functor.Contravariant
#endif
import Data.Semigroup (Endo(Endo, appEndo))
import GHC.Base
