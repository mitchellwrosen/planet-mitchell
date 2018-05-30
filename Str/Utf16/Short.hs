{-# language CPP #-}

module Str.Utf16.Short
  ( module Data.Text.Short
  ) where

import Data.Text.Short

#ifdef MITCHELL
type Utf16
  = ShortText
#endif
