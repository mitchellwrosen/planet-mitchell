-- |
-- JSON functionality common to both encoding and decoding. Re-exported by both
-- "Json.Encode" and "Json.Decode" for convenience.

{-# language CPP #-}

module Json
  (
    Value(..),
#ifdef DEP_LENS_AESON
    Primitive(..),
    -- * Prisms
    AsNumber,
    _Number,
    _Double,
    _Integer,
    _Integral,
    nonNull,
    AsPrimitive,
    _Primitive,
    _String,
    _Bool,
    _Null,
    AsValue,
    _Value,
    _Object,
    _Array,
    AsJSON,
    _JSON,
    -- * Traversals
    key,
    members,
    nth,
    values,
#endif
  ) where

import Data.Aeson (Value(..))
#ifdef DEP_LENS_AESON
import Data.Aeson.Lens
#endif
