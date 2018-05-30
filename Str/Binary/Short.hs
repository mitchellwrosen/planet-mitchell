{-# language CPP #-}

module Str.Binary.Short
  (
#ifdef MITCHELL
    Binary,
#endif
    module Data.ByteString.Short,
  ) where

import Data.ByteString.Short

#ifdef MITCHELL
type Binary
  = ShortByteString
#endif
