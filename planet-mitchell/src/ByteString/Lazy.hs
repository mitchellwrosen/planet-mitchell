module ByteString.Lazy
  ( -- FIXME
    module Data.ByteString.Lazy
    -- ** Optics
  , bytes
  , packedBytes
  , unpackedBytes
  ) where

import Data.ByteString.Lazy        hiding (split)
import Data.ByteString.Lens        (bytes, packedBytes, unpackedBytes)
