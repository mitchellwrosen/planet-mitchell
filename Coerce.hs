module Coerce
  ( Coercible
  , coerce
  , Coercion(..)
  , coerceWith
  , gcoerceWith
  , sym
  , trans
  , repr
  , TestCoercion(..)
  , unsafeCoerce
  ) where

import Data.Coerce
import Data.Type.Coercion
import Unsafe.Coerce
