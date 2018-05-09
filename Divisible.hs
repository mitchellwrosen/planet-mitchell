{-# language CPP #-}

module Divisible
  (
#ifdef CONTRAVARIANT
    Divisible(..)
  , divided
  , conquered
  ,
#endif
    contrazip3
  , contrazip4
  , contrazip5
  , Supplied(..)
  ) where

import Contravariant.Extras
#ifdef CONTRAVARIANT
import Data.Functor.Contravariant.Divisible
#endif
