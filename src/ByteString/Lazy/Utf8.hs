module ByteString.Lazy.Utf8
  ( break
  , drop
  , foldl
  , foldr
  , fromString
  , length
  , span
  , splitAt
  , take
  , toString
  , uncons
    -- ** Optics
  , utf8
  ) where

import Data.ByteString.Lazy.UTF8
  (break, drop, foldl, foldr, fromString, length, span, splitAt, take, toString,
    uncons)
import Data.Text.Lazy.Lens (utf8)
