{-| This module contains:

    * The 'Applicative' type class from @base@.
    * Functions on 'Applicative' from @base@, originally exported from
      "Control.Monad" (a historical accident).
    * The 'whenJust' function from @extra@.

-}
module Applicative
  ( -- * Applicative
    Applicative(..)
  , filterM
  , forever
  , liftA3
  , replicateM
  , replicateM_
  , unless
  , when
  , whenJust
  , zipWithM
  , zipWithM_
  ) where

import Control.Applicative
import Control.Monad
import Control.Monad.Extra
