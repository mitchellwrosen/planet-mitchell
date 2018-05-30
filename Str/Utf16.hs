{-# language CPP #-}

module Str.Utf16
  (
#ifdef MITCHELL
    Utf16,
#endif
    module Data.Text,
    module Data.Text.Encoding,
  ) where

import Data.Text
import Data.Text.Encoding

#ifdef MITCHELL
type Utf16
  = Text
#endif
