{-# LANGUAGE ExplicitNamespaces #-}

module Symbol
  ( -- * Symbol
    Symbol
  , KnownSymbol
  , symbolVal
  , symbolVal'
  , SomeSymbol(..)
  , someSymbolVal
  , sameSymbol
  , AppendSymbol
  , CmpSymbol
  ) where

import GHC.TypeLits
