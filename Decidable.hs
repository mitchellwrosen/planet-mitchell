{-# language CPP #-}

module Decidable
  (
#ifdef CONTRAVARIANT
    Decidable(..)
  , chosen
  , lost
  ,
#endif
    contramany
  ) where

import Contravariant.Extras
#ifdef CONTRAVARIANT
import Data.Functor.Contravariant.Divisible
#endif
