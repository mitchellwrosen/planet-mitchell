{-# language CPP #-}

module Ord
  (
    Ord(..),
    Ordering(..),
#ifdef DEP_CONTRAVARIANT
    Comparison(..),
    defaultComparison,
#endif
    comparing,
    Down(..),
    Min(..),
    Max(..),
    Arg(..),
    ArgMin,
    ArgMax,
    Ord1(..),
    compare1,
#ifdef DEP_TRANSFORMERS_COMPAT
    liftCompareDefault,
#endif
    Ord2(..),
    compare2,
  ) where

import Data.Functor.Classes
#ifdef DEP_TRANSFORMERS_COMPAT
import Data.Functor.Classes.Generic
#endif
#ifdef DEP_CONTRAVARIANT
import Data.Functor.Contravariant
#endif
import Data.Ord
import Data.Semigroup
