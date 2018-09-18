{-# language CPP #-}

module Function
  (
    const,
    flip,
    ($),
    ($!),
    (&),
    until,
    asTypeOf,
    fix,
    on,
    Endo(..),
    diff,
#ifdef DEP_CONTRAVARIANT
    Op(..),
#endif
  ) where

import Data.Function
#ifdef DEP_CONTRAVARIANT
import Data.Functor.Contravariant
#endif
import Data.Semigroup
import GHC.Base
