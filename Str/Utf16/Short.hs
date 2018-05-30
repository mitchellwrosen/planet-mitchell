{-# language CPP #-}

module Str.Utf16.Short
  (
#ifdef MITCHELL
    Utf16,
#endif
    module Data.Text.Short,
  ) where

import Data.Text.Short

#ifdef MITCHELL
type Utf16
  = ShortText
#endif
