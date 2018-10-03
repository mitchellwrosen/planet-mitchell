module Contravariant
  ( -- * Contravariant
    Contravariant(..)
  , phantom
  , (>$<)
  , (>$$<)
  , ($<)
    -- ** Optics
  , contramapped
  ) where

import Control.Lens.Setter        (contramapped)
import Data.Functor.Contravariant
