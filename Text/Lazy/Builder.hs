module Text.Lazy.Builder
  ( -- * Builder
    Builder,
    toLazyText,
    toLazyTextWith,
    singleton,
    fromText,
    fromLazyText,
    fromString,
    flush,
    decimal,
    hexadecimal,
    FPFormat(..),
    realFloat,
    formatRealFloat,
  ) where

import Data.Text.Lazy.Builder
import Data.Text.Lazy.Builder.Int (decimal, hexadecimal)
import Data.Text.Lazy.Builder.RealFloat
  (FPFormat(..), realFloat, formatRealFloat)
