module ByteString.Lazy
  ( -- FIXME
    module Data.ByteString.Lazy
  , hashlazy
  , hmaclazy
    -- ** Optics
  , bytes
  , packedBytes
  , unpackedBytes
  ) where

import Crypto.Hash.SHA1     (hashlazy, hmaclazy)
import Data.ByteString.Lazy
import Data.ByteString.Lens (bytes, packedBytes, unpackedBytes)
