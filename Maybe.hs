module Maybe
  ( -- * Maybe
    Maybe(..)
  , maybe
  , isJust
  , isNothing
  , fromMaybe
  , listToMaybe
  , maybeToList
  , catMaybes
  , mapMaybe
    -- ** Newtypes
  , Option(..)
  , option
  , First(..)
  , Last(..)
  ) where

import Data.Maybe
import Data.Monoid
import Data.Semigroup (Option(..), option)
