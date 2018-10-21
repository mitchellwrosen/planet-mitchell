module Monoid
  ( -- * Monoid
    Monoid(..)
  , gmempty
  ) where

import Data.Monoid            (Monoid(mconcat, mempty, mappend))
import Data.Semigroup.Generic (gmempty)
