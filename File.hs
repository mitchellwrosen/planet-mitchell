{-| This module contains:

    * File handle operations from @base@, originally exported from the
      "System.IO" module, but generalized by @unliftio@.
    * The "System.FilePath" module from @filepath@.
    * The "UnliftIO.Temporary" module from @unliftio@.
    * The "UnliftIO.Directory" module from @unliftio@.

-}

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
  , module System.FilePath
  , module UnliftIO.Temporary
  , module UnliftIO.Directory
  ) where

import System.FilePath hiding (FilePath)
import System.IO (FilePath, HandlePosn, SeekMode(..), hGetPosn, hSetPosn, hShow)
import UnliftIO.IO
import UnliftIO.Temporary
import UnliftIO.Directory
