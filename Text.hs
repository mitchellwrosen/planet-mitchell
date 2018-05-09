{-# language CPP #-}

#ifdef USE_TEXT

module Text
  ( module Data.Text
  , module Data.Text.Encoding
  ) where

import Data.Text
import Data.Text.Encoding

#else

module Text where

#endif
