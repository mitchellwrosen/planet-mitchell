module Alternative
  ( -- * Alternative
    Alternative((<|>), empty, many)
  , some1
  , optional
  , guard
    -- ** Newtypes
  , Alt(..)
  ) where

import Control.Applicative
import Control.Monad
import Data.List.NonEmpty (some1)
import Data.Monoid (Alt(..))
