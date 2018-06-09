{-# language CPP #-}

module ByteString.Latin1
  ( module Data.ByteString.Char8,
#ifdef DEP_BYTESTRING_LEXING
    readSigned,
    readDecimal,
    readHexadecimal,
    readOctal,
#endif
  ) where

import Data.ByteString.Char8
#ifdef DEP_BYTESTRING_LEXING
import Data.ByteString.Lex.Integral
#endif
