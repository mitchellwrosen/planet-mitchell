{-| Binary file handling.
-}

module File.Binary
  ( -- * File path operations
    withBinaryFile
    -- ** Reading
  , readFile
    -- ** Writing
  , writeFile
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

import Data.ByteString
import UnliftIO.IO (withBinaryFile)
