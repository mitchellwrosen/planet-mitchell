{-# language CPP #-}

module Maybe
  ( -- * Maybe
    Maybe(..),
    maybe,
    isJust,
    isNothing,
    fromMaybe,
    listToMaybe,
    maybeToList,
    catMaybes,
    mapMaybe,
#ifdef DEP_LENS
    -- ** Optics
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
import Control.Lens.Prism
#endif
import Data.Maybe
import Data.Monoid
import Data.Semigroup (Option(..), option)
