-- | Binary file handling.

module File.Binary
  ( -- * File path operations
    withBinaryFile
    -- ** Reading
  , readFile
  , readFileDeserialise
    -- ** Writing
  , writeFile
  , writeFileSerialise
  , appendFile
    -- * File handle operations
    -- ** Reading
  , getContents
  , hGetContents
  , hGet
  , hGetSome
  , hGetNonBlocking
    -- ** Writing
  , putStr
  , hPutStr
  , hPutNonBlocking
  ) where

import Codec.Serialise (readFileDeserialise, writeFileSerialise)
import Data.ByteString
import UnliftIO.IO     (withBinaryFile)
