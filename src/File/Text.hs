-- | Textual file handling.

module File.Text
  (
    -- * File path operations
    withFile
  , openFileBlocking
    -- ** Reading
  , readFile
    -- ** Writing
  , writeFile
  , appendFile
    -- * File handle operations
    -- ** Reading
  , getChar
  , getLine
  , getContents
  , hGetChar
  , hGetLine
  , hGetChunk
  , hGetContents
    -- ** Writing
  , putStr
  , putStrLn
  , print
  , hPutStr
  , hPutStrLn
  , hPrint
    -- * File encoding
  , TextEncoding
  , hSetEncoding
  , hGetEncoding
  , latin1
  , utf8
  , utf8_bom
  , utf16
  , utf16le
  , utf16be
  , utf32
  , utf32le
  , utf32be
  ) where

import Data.Text.IO
import GHC.IO.Handle.FD (openFileBlocking)
import System.IO
  (TextEncoding, getChar, hGetChar, hPrint, hSetEncoding, hGetEncoding, latin1,
    print, utf8, utf8_bom, utf16, utf16be, utf16le, utf32, utf32be, utf32le)
import UnliftIO.IO (withFile)
