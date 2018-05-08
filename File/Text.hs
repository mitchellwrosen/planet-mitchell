{-| Textual file handling.
-}

module File.Text
  ( -- * File path operations
    withFile
    -- ** Reading
  , readFile
    -- ** Writing
  , writeFile
  , appendFile
    -- * File handle operations
    -- ** Reading
  , getContents
  , getLine
  , hGetContents
  , hGetChunk
  , hGetLine
    -- ** Writing
  , putStr
  , putStrLn
  , hPutStr
  , hPutStrLn
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
import System.IO
  (TextEncoding, hSetEncoding, hGetEncoding, latin1, utf8, utf8_bom, utf16,
    utf16be, utf16le, utf32, utf32be, utf32le)
import UnliftIO.IO (withFile)
