module Text.Lazy
  ( -- * Text
    module Data.Text.Lazy
  , module Data.Text.Lazy.Encoding
    -- ** Optics
  , packed
  , unpacked
  , text
  , builder
  ) where

import Data.Text.Lazy
import Data.Text.Lazy.Encoding
import Data.Text.Lazy.Lens (packed, unpacked, text, builder)
