module Json.Encode
  (
    -- * Encoding
    Array
  , emptyArray
  , Object
  , emptyObject
  , ToJSON(..)
  , gtoJson
  , ToJSONKey(..)
  , ToJSONKeyFunction(..)
  , encode
  , encodeToLazyText
  , encodePretty
  , KeyValue
  , (.=)
  , object
    -- ** Direct encoding
  , Encoding
  , Encoding'
  , encodingToLazyByteString
  , Series
  , pairs
  , pair
  , pair'
  , foldable
  , emptyArray_
  , emptyObject_
  , text
  , lazyText
  , string
  , list
  , dict
  , null_
  , bool
  , int8
  , int16
  , int32
  , int64
  , int
  , word8
  , word16
  , word32
  , word64
  , word
  , integer
  , float
  , double
  , scientific
  , int8Text
  , int16Text
  , int32Text
  , int64Text
  , intText
  , word8Text
  , word16Text
  , word32Text
  , word64Text
  , wordText
  , integerText
  , floatText
  , doubleText
  , scientificText
  , day
  , localTime
  , utcTime
  , timeOfDay
  , zonedTime
  , value
    -- ** Quasi-quotation
  , aesonQQ
    -- * Newtypes
  , DotNetTime(..)
    -- * Re-exports
  , module Json
  ) where

import Json

import Data.Aeson
import Data.Aeson.Encode.Pretty (encodePretty)
import Data.Aeson.Encoding
import Data.Aeson.QQ (aesonQQ)
import Data.Aeson.Text
import Data.Aeson.Types
import Generics.Generic.Aeson (gtoJson)
