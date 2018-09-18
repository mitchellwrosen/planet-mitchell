{-# language CPP #-}

module ByteString.Lazy
  ( -- FIXME
    module Data.ByteString.Lazy,
#ifdef DEP_LENS
    bytes,
#endif
#ifdef DEP_CRYPTOHASH_SHA1
    hashlazy,
    hmaclazy,
#endif
#ifdef DEP_LENS
    packedBytes,
    unpackedBytes,
#endif
  ) where

#ifdef DEP_CRYPTOHASH_SHA1
import Crypto.Hash.SHA1 (hashlazy, hmaclazy)
#endif
import Data.ByteString.Lazy
#ifdef DEP_LENS
import Data.ByteString.Lens
#endif
