module Alg.Alternative
  ( -- * Alternative
    Alternative((<|>), empty, many)
  , guard
  , optional
  , some1
    -- ** Newtypes
  , Alt(..)
  ) where

import Control.Applicative (Alternative(empty, many, (<|>)))
import Control.Monad       (guard)
import Data.Functor.Alt    (optional)
import Data.List.NonEmpty  (some1)
import Data.Monoid         (Alt(Alt, getAlt))
