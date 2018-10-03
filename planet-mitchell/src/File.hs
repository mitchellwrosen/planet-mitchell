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
  , hReady
  , hShow
  , hTell
  , hWaitForInput
    -- ** File handle operations
  , hClose
  , hFlush
  , hSeek
  , hSetBinaryMode
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

import System.FilePath    hiding (FilePath)
import System.IO          (FilePath, HandlePosn, SeekMode(..), hGetPosn,
                           hSetBinaryMode, hSetPosn, hShow)
import UnliftIO.Directory
import UnliftIO.IO
import UnliftIO.Temporary
