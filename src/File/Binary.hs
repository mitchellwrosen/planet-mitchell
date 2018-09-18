{-| Binary file handling.
-}

{-# language CPP #-}

module File.Binary
  ( -- * File path operations
    withBinaryFile
#ifdef DEP_BYTESTRING
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

#ifdef DEP_BYTESTRING
import Data.ByteString
#endif
#ifdef DEP_UNLIFTIO
import UnliftIO.IO (withBinaryFile)
#else
import System.IO (withBinaryFile)
#endif
