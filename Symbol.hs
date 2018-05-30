{-# language CPP                #-}
{-# language ExplicitNamespaces #-}

module Symbol
  ( -- * Symbol
    Symbol,
    KnownSymbol,
    symbolVal,
    symbolVal',
    SomeSymbol(..),
    someSymbolVal,
    sameSymbol,
    AppendSymbol,
    CmpSymbol,
#ifdef DEP_CONSTRAINTS
    type (++),
    Take,
    Drop,
    Length,
    appendSymbol,
    appendUnit1,
    appendUnit2,
    appendAssociates,
    takeSymbol,
    dropSymbol,
    takeAppendDrop,
    lengthSymbol,
    takeLength,
    take0,
    takeEmpty,
    dropLength,
    drop0,
    dropEmpty,
    lengthTake,
    lengthDrop,
    dropDrop,
    takeTake,
#endif
  ) where

#ifdef DEP_CONSTRAINTS
import Data.Constraint.Symbol
#endif
import GHC.TypeLits
