{-# language CPP #-}

module Str.Binary.Short
  ( module Data.ByteString.Short
  ) where

import Data.ByteString.Short

#ifdef MITCHELL
type Binary
  = ShortByteString
#endif
