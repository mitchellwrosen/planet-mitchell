{-# language CPP #-}

module Str.Lazy.Latin1
  (
#ifdef MITCHELL
    Latin1,
#endif
    module Data.ByteString.Lazy.Char8,
  ) where

import Data.ByteString.Lazy.Char8

#ifdef MITCHELL
type Latin1
  = ByteString
#endif
