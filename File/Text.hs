{-| Textual file handling.
-}

{-# language CPP #-}

module File.Text
  (
    -- * File path operations
    withFile,
#ifdef USE_TEXT
    -- ** Reading
    readFile,
    -- ** Writing
    writeFile,
    appendFile,
    -- * File handle operations
    -- ** Reading
    getContents,
    getLine,
    hGetContents,
    hGetChunk,
    hGetLine,
    -- ** Writing
    putStr,
    putStrLn,
    hPutStr,
    hPutStrLn,
#endif
    -- * File encoding
    TextEncoding,
    hSetEncoding,
    hGetEncoding,
    latin1,
    utf8,
    utf8_bom,
    utf16,
    utf16le,
    utf16be,
    utf32,
    utf32le,
    utf32be,
  ) where

#ifdef USE_TEXT
import Data.Text.IO
#endif
import System.IO
  (TextEncoding, hSetEncoding, hGetEncoding, latin1, utf8, utf8_bom, utf16,
    utf16be, utf16le, utf32, utf32be, utf32le)
#ifdef USE_UNLIFTIO
import UnliftIO.IO (withFile)
#else
import System.IO (withFile)
#endif
