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
#ifdef USE_CONTRAVARIANT
    Op(..),
#endif
  ) where

import Data.Function
#ifdef USE_CONTRAVARIANT
import Data.Functor.Contravariant
#endif
import Data.Semigroup
import GHC.Base
