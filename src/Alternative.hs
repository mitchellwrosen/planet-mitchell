module Alternative
  ( -- * Alternative
    Alternative(..)
  , some1
  , optional
  , guard
  , Alt(..)
  ) where

import Control.Applicative
import Control.Monad
import Data.List.NonEmpty (some1)
import Data.Monoid (Alt(..))
