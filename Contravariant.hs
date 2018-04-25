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
    -- * Optics
  , contramapping
  , contramapped
  ) where

import Control.Lens.Iso
import Control.Lens.Setter
import Data.Functor.Contravariant
