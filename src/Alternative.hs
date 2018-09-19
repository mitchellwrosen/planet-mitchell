module Alternative
  ( -- * Alternative
    Alternative((<|>), empty, many)
  , some1
  , optional
  , guard
    -- ** Newtypes
  , Alt(..)
  ) where

import Control.Applicative (Alternative((<|>), empty, many), optional)
import Control.Monad (guard)
import Data.List.NonEmpty (some1)
import Data.Monoid (Alt(Alt, getAlt))
