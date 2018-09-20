module ByteString.Utf8
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

import Data.ByteString.UTF8  (break, drop, foldl, foldr, fromString, length,
                              span, splitAt, take, toString, uncons)
import Data.Text.Strict.Lens (utf8)
