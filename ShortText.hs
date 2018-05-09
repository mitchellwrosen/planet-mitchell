{-# language CPP #-}

#ifdef USE_TEXT_SHORT

module ShortText
  ( module Data.Text.Short
  , module Data.Text.Short.Partial
  , module Data.Text.Short.Unsafe
  ) where

import Data.Text.Short
import Data.Text.Short.Partial
import Data.Text.Short.Unsafe

#else

module ShortText where

#endif
