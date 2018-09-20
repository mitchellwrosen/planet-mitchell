module Char
  ( -- * Char
    Char
  , isControl
  , isSpace
  , isLower
  , isUpper
  , isAlpha
  , isAlphaNum
  , isPrint
  , isDigit
  , isOctDigit
  , isHexDigit
  , isLetter
  , isMark
  , isNumber
  , isPunctuation
  , isSymbol
  , isSeparator
  , isAscii
  , isAsciiUpper
  , isAsciiLower
  , isLatin1
  , GeneralCategory(..)
  , generalCategory
  , toUpper
  , toLower
  , toTitle
  , ord
  , showChar
  , showLitChar
  , lexLitChar
  , readLitChar
  ) where

import Data.Char
import GHC.Show (showChar)
