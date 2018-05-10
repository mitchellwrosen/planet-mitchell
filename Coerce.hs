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
    -- * unsafeCoerce
  , unsafeCoerce
  ) where

import Data.Coerce
import Data.Type.Coercion
import Unsafe.Coerce
