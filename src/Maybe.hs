module Maybe
  ( -- * Maybe
    Maybe(..)
  , maybe
  , maybeM
  , isJust
  , isNothing
  , fromMaybe
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
import Control.Monad.Extra (maybeM)
import Data.Maybe
import Data.Monoid
import Data.Semigroup      (Option(..), option)
