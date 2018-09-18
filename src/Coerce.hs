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
  ) where

import Data.Coerce
import Data.Type.Coercion
