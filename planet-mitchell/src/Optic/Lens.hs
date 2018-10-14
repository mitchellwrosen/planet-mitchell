module Optic.Lens
  ( -- * Lens
    Lens
  , Lens'
  , lens
    -- * HasAny
  , HasAny(..)
    -- * Subtype
  , Subtype(..)
    -- * At
  , At(..)
  , sans
  , Index
  , IxValue
    -- * Contains
  , Contains(..)
  ) where

import Control.Lens.At               (At(at), Contains(contains), Index,
                                      IxValue, sans)
import Control.Lens.Lens             (Lens, Lens', lens)
import Data.Generics.Product.Any     (HasAny(the))
import Data.Generics.Product.Subtype (Subtype(smash, super, upcast))
