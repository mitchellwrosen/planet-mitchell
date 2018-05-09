{-# language CPP #-}

#ifdef USE_TEXT

module LazyText
  ( module Data.Text.Lazy
  , module Data.Text.Lazy.Encoding
  ) where

import Data.Text.Lazy
import Data.Text.Lazy.Encoding

#else

module LazyText where

#endif
