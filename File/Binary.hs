{-| Binary file handling.
-}

{-# language CPP #-}

module File.Binary
  ( -- * File path operations
    withBinaryFile
#ifdef BYTESTRING
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
#endif
  ) where

#ifdef BYTESTRING
import Data.ByteString
#endif
import UnliftIO.IO (withBinaryFile)
