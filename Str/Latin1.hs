{-# language CPP #-}

module Str.Latin1
  (
#ifdef MITCHELL
    Latin1,
#endif
    module Data.ByteString.Char8,
  ) where

import Data.ByteString.Char8

#ifdef MITCHELL
type Latin1
  = ByteString
#endif
