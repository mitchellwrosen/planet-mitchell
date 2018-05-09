{-| This module contains:

    * The 'Alternative' type class and functions from @base@.
    * The 'Alt' newtype from @base@.
-}
module Alternative
  ( -- * Alternative
    Alternative(..)
  , optional
  , guard
  , Alt(..)
  ) where

import Control.Applicative
import Control.Monad
import Data.Monoid
