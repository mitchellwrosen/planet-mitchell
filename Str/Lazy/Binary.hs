{-# language CPP #-}

module Str.Lazy.Binary
  ( module Data.ByteString.Lazy
  ) where

import Data.ByteString.Lazy

#ifdef MITCHELL
type Binary
  = ByteString
#endif
