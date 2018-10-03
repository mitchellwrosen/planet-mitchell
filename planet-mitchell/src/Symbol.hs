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
  , type (++)
  , Take
  , Drop
  , Length
  , appendSymbol
  , appendUnit1
  , appendUnit2
  , appendAssociates
  , takeSymbol
  , dropSymbol
  , takeAppendDrop
  , lengthSymbol
  , takeLength
  , take0
  , takeEmpty
  , dropLength
  , drop0
  , dropEmpty
  , lengthTake
  , lengthDrop
  , dropDrop
  , takeTake
  ) where

import Data.Constraint.Symbol
import GHC.TypeLits
