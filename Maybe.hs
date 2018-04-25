module Maybe
  ( Maybe(..)
  , maybe
  , isJust
  , isNothing
  , fromMaybe
  , listToMaybe
  , maybeToList
  , catMaybes
  , mapMaybe
  , Option(..)
  , option
  , First(..)
  , Last(..)
    -- * Optics
  , _Just
  , _Nothing
  ) where

import Control.Lens.Prism
import Data.Maybe
import Data.Monoid
import Data.Semigroup (Option(..), option)
