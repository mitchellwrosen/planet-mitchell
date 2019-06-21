module Num.Word
  ( -- * Word
    Word
  , Word8
  , Word16
  , byteSwap16
  , Word32
  , byteSwap32
  , Word64
  , byteSwap64
  ) where

import GHC.Word                     (Word, Word16, Word32, Word64, Word8,
                                     byteSwap16, byteSwap32, byteSwap64)
