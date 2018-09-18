{-# language CPP #-}

module ByteString.Utf8
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

import Data.ByteString.UTF8
  (break, drop, foldl, foldr, fromString, length, span, splitAt, take, toString,
    uncons)
#ifdef DEP_LENS
import Data.Text.Strict.Lens (utf8)
#endif
