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
  ) where

import Data.Maybe
import Data.Monoid
import Data.Semigroup (Option(..), option)
