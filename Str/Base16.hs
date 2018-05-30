{-# language CPP #-}

module Str.Base16
  ( encode
  , decode
  ) where

#ifdef DEP_BYTESTRING
import Data.ByteString (ByteString)
#endif
import Data.ByteString.Base16 (decode, encode)

#if defined(DEP_BYTESTRING) && defined(MITCHELL)
type Base16
  = ByteString
#endif
