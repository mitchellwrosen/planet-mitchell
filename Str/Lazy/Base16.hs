{-# language CPP #-}

module Str.Lazy.Base16
  (
#if defined(DEP_BYTESTRING) && defined(MITCHELL)
    Base16,
#endif
    encode,
    decode,
  ) where

#ifdef DEP_BYTESTRING
import Data.ByteString.Lazy (ByteString)
#endif
import Data.ByteString.Base16.Lazy (decode, encode)

#if defined(DEP_BYTESTRING) && defined(MITCHELL)
type Base16
  = ByteString
#endif
