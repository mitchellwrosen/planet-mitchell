{-| This module contains:

    * The "Data.Coerce" module from @base@.
    * The "Data.Type.Coercion" module from @base@.
    * The "Unsafe.Coerce" module from @base@.
-}

module Coerce
  ( -- * Coercible
    Coercible
  , coerce
    -- * Coercion
  , Coercion(..)
  , coerceWith
  , gcoerceWith
  , sym
  , trans
  , repr
  , TestCoercion(..)
    -- * Optics
  , coerced
    -- * unsafeCoerce
  , unsafeCoerce
  ) where

import Control.Lens.Iso
import Data.Coerce
import Data.Type.Coercion
import Unsafe.Coerce
