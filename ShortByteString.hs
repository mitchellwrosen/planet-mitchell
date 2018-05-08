{-# language CPP #-}

#ifdef BYTESTRING

module ShortByteString
  ( module Data.ByteString.Short
  ) where

import Data.ByteString.Short

#else

module ShortByteString where

#endif
