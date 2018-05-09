{-# language CPP #-}

#ifdef USE_BYTESTRING

module ShortByteString
  ( module Data.ByteString.Short
  ) where

import Data.ByteString.Short

#else

module ShortByteString where

#endif
