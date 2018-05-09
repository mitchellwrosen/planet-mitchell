{-| This module contains:

    * File handle operations from @base@, generalized by @unliftio@.
    * The "System.FilePath" module from @filepath@.
    * The "UnliftIO.Temporary" module from @unliftio@.
    * The "UnliftIO.Directory" module from @unliftio@.

-}

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
#ifdef FILEPATH
  , module System.FilePath
#endif
  , module UnliftIO.Temporary
  , module UnliftIO.Directory
  ) where

#ifdef FILEPATH
import System.FilePath hiding (FilePath)
#endif
import System.IO (FilePath, HandlePosn, SeekMode(..), hGetPosn, hSetPosn, hShow)
import UnliftIO.IO
import UnliftIO.Temporary
import UnliftIO.Directory
