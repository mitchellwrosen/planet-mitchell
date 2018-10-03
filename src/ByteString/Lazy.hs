module ByteString.Lazy
  ( -- FIXME
    module Data.ByteString.Lazy
  , breakAfter
  , breakFindAfter
  , breakOn
  , indices
  , nonOverlappingIndices
  , replace
  , split
  , splitKeepEnd
  , splitKeepFront
    -- ** Optics
  , bytes
  , packedBytes
  , unpackedBytes
  ) where

import Data.ByteString.Lazy        hiding (split)
import Data.ByteString.Lazy.Search (breakAfter, breakFindAfter, breakOn,
                                    indices, nonOverlappingIndices, replace,
                                    split, splitKeepEnd, splitKeepFront)
import Data.ByteString.Lens        (bytes, packedBytes, unpackedBytes)
