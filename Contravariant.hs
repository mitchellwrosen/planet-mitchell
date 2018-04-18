{-| This module contains:

    * The 'Contravariant' type class from @contravariant@.
    * Functions on 'Contravariant' from @contravariant@.
-}

module Contravariant
  ( -- * Contravariant
    Contravariant(..)
  , phantom
  , (>$<)
  , (>$$<)
  , ($<)
  ) where

import Data.Functor.Contravariant
