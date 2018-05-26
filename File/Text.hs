{-| Textual file handling.
-}

{-# language CPP #-}

module File.Text
  (
    -- * File path operations
    withFile,
    openFileBlocking,
#ifdef USE_TEXT
    -- ** Reading
    readFile,
    -- ** Writing
    writeFile,
    appendFile,
#endif
    -- * File handle operations
    -- ** Reading
    getChar,
#ifdef USE_TEXT
    getLine,
    getContents,
#endif
    hGetChar,
#ifdef USE_TEXT
    hGetLine,
    hGetChunk,
    hGetContents,
#endif
    -- ** Writing
#ifdef USE_TEXT
    putStr,
    putStrLn,
#endif
    print,
#ifdef USE_TEXT
    hPutStr,
    hPutStrLn,
#endif
    hPrint,
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
import GHC.IO.Handle.FD (openFileBlocking)
import System.IO
  (TextEncoding, getChar, hGetChar, hPrint, hSetEncoding, hGetEncoding, latin1,
    print, utf8, utf8_bom, utf16, utf16be, utf16le, utf32, utf32be, utf32le)
#ifdef USE_UNLIFTIO
import UnliftIO.IO (withFile)
#else
import System.IO (withFile)
#endif
