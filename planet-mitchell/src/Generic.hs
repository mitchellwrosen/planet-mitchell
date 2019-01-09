module Generic
  ( module GHC.Generics
    -- ** Optics
    -- *** Product
  , HasAny(..)
  , HasField(..)
  , HasField'(..)
  , HasField_(..)
  , HasType(..)
  , HasTypes
  , types
  , Subtype(..)
    -- *** Sum
  , AsAny(..)
  , AsConstructor(..)
  , AsSubtype(..)
  , AsType(..)
    -- *** Newtype
  , Wrapped
  , _Unwrapped
  , _Wrapped
  ) where

import Data.Generics.Product.Any      (HasAny(the))
import Data.Generics.Product.Fields   (HasField(field), HasField'(field'),
                                       HasField_(field_))
import Data.Generics.Product.Subtype  (Subtype(super))
import Data.Generics.Product.Typed    (HasType(typed))
import Data.Generics.Product.Types    (HasTypes, types)
import Data.Generics.Sum.Any          (AsAny(_As))
import Data.Generics.Sum.Constructors (AsConstructor(_Ctor))
import Data.Generics.Sum.Subtype      (AsSubtype(_Sub))
import Data.Generics.Sum.Typed        (AsType(_Typed))
import Data.Generics.Wrapped          (Wrapped, _Unwrapped, _Wrapped)
import GHC.Generics
