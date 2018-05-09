{-# language CPP #-}

#ifdef USE_CONTRAVARIANT

module Predicate
  ( Predicate(..)
  ) where

import Data.Functor.Contravariant

#else

module Predicate where

#endif
