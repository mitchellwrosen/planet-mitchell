{-# language PatternSynonyms #-}

module Typeable
  ( Typeable
  , cast
  , eqT
  , gcast
  , gcast1
  , gcast2
  , TypeRep
  , typeRep
  , typeOf
  , withTypeable
  , pattern App
  , pattern Con
  , pattern Con'
  , pattern Fun
  , typeRepTyCon
  , rnfTypeRep
  , eqTypeRep
  , typeRepKind
  , splitApps
  , SomeTypeRep(..)
  , someTypeRep
  , someTypeRepTyCon
  , rnfSomeTypeRep
  , TyCon
  , tyConPackage
  , tyConModule
  , tyConName
  , rnfTyCon
  , Module
  , moduleName
  , modulePackage
  , rnfModule
  ) where

import Data.Typeable hiding (TypeRep, rnfTypeRep, typeOf, typeRep, typeRepTyCon)
import Type.Reflection
