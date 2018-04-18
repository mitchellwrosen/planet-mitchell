{-| This module contains:

    * The 'Alternative' type class from @base@, originally exported from
      "Control.Applicative".
    * Functions on 'Alternative' from @base@, originally exported from
      "Control.Monad" (a historical accident).
    * The 'Alt' newtype from @base@, originally exported from "Data.Monoid".
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
