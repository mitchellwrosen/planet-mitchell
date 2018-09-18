{-# language CPP #-}

module Text.Lazy
  ( -- * Text
    module Data.Text.Lazy,
    module Data.Text.Lazy.Encoding,
#ifdef DEP_LENS
    -- ** Optics
    packed,
    unpacked,
    text,
    builder,
#endif
  ) where

import Data.Text.Lazy
import Data.Text.Lazy.Encoding
#ifdef DEP_LENS
import Data.Text.Lazy.Lens (packed, unpacked, text, builder)
#endif
