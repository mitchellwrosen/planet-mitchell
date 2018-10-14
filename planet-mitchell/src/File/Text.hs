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
  , say
  , sayString
  , sayShow
  , sayErr
  , sayErrString
  , sayErrShow
  , hSay
  , hSayString
  , hSayShow
    -- *** Writing (no newlines)
  , putStr
  , hPutStr
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
import Say              (hSay, hSayShow, hSayString, say, sayErr, sayErrShow,
                         sayErrString, sayShow, sayString)
import System.IO        (TextEncoding, getChar, hGetChar, hGetEncoding,
                         hSetEncoding, latin1, utf16, utf16be, utf16le, utf32,
                         utf32be, utf32le, utf8, utf8_bom)
import UnliftIO.IO      (withFile)
