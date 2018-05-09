{-| Binary file handling.
-}

{-# language CPP #-}

module File.Binary
  ( -- * File path operations
    withBinaryFile
#ifdef USE_BYTESTRING
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

#ifdef USE_BYTESTRING
import Data.ByteString
#endif
#ifdef USE_UNLIFTIO
import UnliftIO.IO (withBinaryFile)
#else
import System.IO (withBinaryFile)
#endif
