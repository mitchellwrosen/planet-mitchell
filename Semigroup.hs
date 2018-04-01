module Semigroup
  ( -- * Semigroup
    Semigroup(..)
    -- * Newtypes
  , First(..)
  , Last(..)
  , Dual(..)
  , cycle1
    -- * Generic Semigroup
  , gsappenddefault
  ) where

import Data.Semigroup
import Generics.Deriving.Semigroup
