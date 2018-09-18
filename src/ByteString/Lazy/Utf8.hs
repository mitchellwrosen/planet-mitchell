{-# language CPP #-}

module ByteString.Lazy.Utf8
  ( break,
    drop,
    foldl,
    foldr,
    fromString,
    length,
    span,
    splitAt,
    take,
    toString,
    uncons,
#ifdef DEP_LENS
    -- ** Optics
    utf8,
#endif
  ) where

import Data.ByteString.Lazy.UTF8
  (break, drop, foldl, foldr, fromString, length, span, splitAt, take, toString,
    uncons)
#ifdef DEP_LENS
import Data.Text.Lazy.Lens (utf8)
#endif
