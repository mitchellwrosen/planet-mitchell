{-# language CPP #-}

module Json.Encode
  (
    -- * Encoding
    Array,
    emptyArray,
    Object,
    emptyObject,
    ToJSON(..),
#ifdef DEP_GENERIC_AESON
    gtoJson,
#endif
    ToJSONKey(..),
    ToJSONKeyFunction(..),
    encode,
    encodeToLazyText,
#ifdef DEP_AESON_PRETTY
    encodePretty,
#endif
    KeyValue,
    (.=),
    object,
    -- ** Direct encoding
    Encoding,
    Encoding',
    encodingToLazyByteString,
    Series,
    pairs,
    pair,
    pair',
    foldable,
    emptyArray_,
    emptyObject_,
    text,
    lazyText,
    string,
    list,
    dict,
    null_,
    bool,
    int8,
    int16,
    int32,
    int64,
    int,
    word8,
    word16,
    word32,
    word64,
    word,
    integer,
    float,
    double,
    scientific,
    int8Text,
    int16Text,
    int32Text,
    int64Text,
    intText,
    word8Text,
    word16Text,
    word32Text,
    word64Text,
    wordText,
    integerText,
    floatText,
    doubleText,
    scientificText,
    day,
    localTime,
    utcTime,
    timeOfDay,
    zonedTime,
    value,
#ifdef DEP_AESON_QQ
    -- ** Quasi-quotation
    aesonQQ,
#endif
    -- * Newtypes
    DotNetTime(..),
    -- * Re-exports
    module Json,
  ) where

import Json

import Data.Aeson
#ifdef DEP_AESON_PRETTY
import Data.Aeson.Encode.Pretty (encodePretty)
#endif
import Data.Aeson.Encoding
#ifdef DEP_AESON_QQ
import Data.Aeson.QQ (aesonQQ)
#endif
import Data.Aeson.Text
import Data.Aeson.Types
#ifdef DEP_GENERIC_AESON
import Generics.Generic.Aeson (gtoJson)
#endif
