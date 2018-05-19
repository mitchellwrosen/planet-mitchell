{-# language CPP #-}

#ifdef USE_AESON

module Json.Encode
  (
    -- * Encoding
    Value,
    Array,
    emptyArray,
    Object,
    emptyObject,
    ToJSON(..),
    ToJSONKey(..),
    ToJSONKeyFunction(..),
    encode,
    encodeToLazyText,
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
    -- * Newtypes
    DotNetTime(..),
  ) where

import Data.Aeson
import Data.Aeson.Encoding
import Data.Aeson.Text
import Data.Aeson.Types

#else

module Json.Encode where

#endif
