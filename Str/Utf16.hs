{-# language CPP #-}

module Str.Utf16
  ( module Data.Text
  , module Data.Text.Encoding
  ) where

import Data.Text
import Data.Text.Encoding

#ifdef MITCHELL
type Utf16
  = Text
#endif
