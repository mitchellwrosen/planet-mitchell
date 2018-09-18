{-# language CPP             #-}
{-# language PatternSynonyms #-}

module Typeable
  ( Typeable,
    cast,
    eqT,
    gcast,
    gcast1,
    gcast2,
    TypeRep,
    typeRep,
    typeOf,
    withTypeable,
    pattern App,
    pattern Con,
    pattern Con',
    pattern Fun,
    typeRepTyCon,
    rnfTypeRep,
    eqTypeRep,
    typeRepKind,
    splitApps,
    SomeTypeRep(..),
    someTypeRep,
    someTypeRepTyCon,
    rnfSomeTypeRep,
    TyCon,
    tyConPackage,
    tyConModule,
    tyConName,
    rnfTyCon,
    Module,
    moduleName,
    modulePackage,
    rnfModule,
#ifdef DEP_LENS
    -- ** Optics
    _cast,
    _gcast,
#endif
  ) where

import Data.Typeable hiding (TypeRep, rnfTypeRep, typeOf, typeRep, typeRepTyCon)
#ifdef DEP_LENS
import Data.Typeable.Lens (_cast, _gcast)
#endif
import Type.Reflection
