{-# language ExplicitNamespaces #-}

module String
  ( -- * String
    String
  , words
  , unwords
  , lines
  , unlines
  , lower
  , upper
  , trim
  , trimStart
  , trimEnd
  , showString
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
import Data.List
import Data.List.Extra
import Data.String
import GHC.Show
import GHC.TypeLits
