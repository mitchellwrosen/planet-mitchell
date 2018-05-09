{-# language CPP #-}

#ifdef USE_BYTESTRING

module LazyByteString
  ( module Data.ByteString.Lazy
  ) where

import Data.ByteString.Lazy

#else

module LazyByteString where

#endif
