module Function
  ( -- * Function
    const
  , flip
  , ($)
  , ($!)
  , (&)
  , until
  , asTypeOf
  , fix
  , on
  , Endo(..)
  , diff
  , Op(..)
    -- * Optics
  , flipped
  ) where

import Control.Lens.Iso
import Data.Function
import Data.Functor.Contravariant
import Data.Semigroup
import GHC.Base
