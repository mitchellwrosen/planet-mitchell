{-# language CPP #-}

module File
  ( -- * File path
    FilePath
    -- * File handle
  , Handle
    -- ** Standard file handles
  , stdin
  , stdout
  , stderr
    -- ** File handle queries
  , hFileSize
  , hGetEcho
  , hGetPosn
  , hIsClosed
  , hIsEOF
  , hIsOpen
  , hIsReadable
  , hIsSeekable
  , hIsTerminalDevice
  , hIsWritable
  , hShow
  , hTell
    -- ** File handle operations
  , hClose
  , hFlush
  , hSeek
  , hSetBuffering
  , hSetEcho
  , hSetFileSize
  , hSetPosn
    -- ** File handle types
  , BufferMode(..)
  , HandlePosn
  , IOMode(..)
  , SeekMode(..)
    -- * Re-exports
#ifdef USE_FILEPATH
  , module System.FilePath
#endif
#ifdef USE_UNLIFTIO
  , module UnliftIO.Temporary
  , module UnliftIO.Directory
#endif
  ) where

#ifdef USE_FILEPATH
import System.FilePath hiding (FilePath)
#endif
import System.IO
  (FilePath, HandlePosn, SeekMode(..), hGetPosn, hSetPosn, hShow)
#ifdef USE_UNLIFTIO
import UnliftIO.IO
import UnliftIO.Temporary
import UnliftIO.Directory
#else
import System.IO
#endif
