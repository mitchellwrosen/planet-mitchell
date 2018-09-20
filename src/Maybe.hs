{-# language CPP #-}

module Maybe
  ( -- * Maybe
    Maybe(..),
    maybe,
#ifdef DEP_EXTRA
    maybeM,
#endif
    isJust,
    isNothing,
    fromMaybe,
    listToMaybe,
    maybeToList,
    catMaybes,
    mapMaybe,
#ifdef DEP_LENS
    -- ** Prisms
    _Just,
    _Nothing,
#endif
    -- ** Newtypes
    Option(..),
    option,
    First(..),
    Last(..),
  ) where

#ifdef DEP_LENS
import Control.Lens.Prism (_Just, _Nothing)
#endif
#ifdef DEP_EXTRA
import Control.Monad.Extra (maybeM)
#endif
import Data.Maybe
import Data.Monoid
import Data.Semigroup (Option(..), option)
