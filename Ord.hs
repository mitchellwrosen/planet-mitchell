{-# language CPP #-}

module Ord
  (
    Ord(..),
    Ordering(..),
#ifdef USE_CONTRAVARIANT
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
    Ord2(..),
    compare2,
  ) where

import Data.Functor.Classes
#ifdef USE_CONTRAVARIANT
import Data.Functor.Contravariant
#endif
import Data.Ord
import Data.Semigroup
