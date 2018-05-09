{-# language CPP                #-}
{-# language ExplicitNamespaces #-}

module String
  ( -- * String
    String
  , words
  , unwords
  , lines
  , unlines
#ifdef EXTRA
  , lower
  , upper
  , trim
  , trimStart
  , trimEnd
#endif
  , showString
  , lexDigits
  , IsString(..)
    -- * Symbol
  , Symbol
  , KnownSymbol
  , symbolVal
  , symbolVal'
  , SomeSymbol(..)
  , someSymbolVal
  , sameSymbol
  , AppendSymbol
  , CmpSymbol
#ifdef CONSTRAINTS
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
#endif
  ) where

#ifdef CONSTRAINTS
import Data.Constraint.Symbol
#endif
import Data.List
#ifdef EXTRA
import Data.List.Extra
#endif
import Data.String
import GHC.Show
import GHC.TypeLits
import Numeric (lexDigits)
