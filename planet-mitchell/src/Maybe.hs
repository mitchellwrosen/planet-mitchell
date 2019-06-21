module Maybe
  ( -- * Maybe
    Maybe(..)
  , maybe
  , maybeM
  , isJust
  , isNothing
  , fromMaybe
  , fromMaybeM
  , listToMaybe
  , maybeToList
  , catMaybes
  , mapMaybe
    -- ** Prisms
  , _Just
  , _Nothing
    -- ** Newtypes
  , Option(..)
  , option
  , First(..)
  , Last(..)
  ) where

import Control.Lens.Prism  (_Just, _Nothing)
import Control.Monad.Extra (fromMaybeM, maybeM)
import Data.Maybe
import Data.Monoid
import Data.Semigroup      (Option(..), option)
