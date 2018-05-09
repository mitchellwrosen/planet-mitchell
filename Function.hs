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
#ifdef CONTRAVARIANT
    Op(..),
#endif
  ) where

import Data.Function
#ifdef CONTRAVARIANT
import Data.Functor.Contravariant
#endif
import Data.Semigroup
import GHC.Base
