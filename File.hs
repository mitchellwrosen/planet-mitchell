{-# language CPP #-}

module File
  ( -- * File path
    FilePath,
    -- * File handle
    Handle,
    -- ** Standard file handles
    stdin,
    stdout,
    stderr,
    -- ** File handle queries
    hFileSize,
    hGetEcho,
    hGetPosn,
    hIsClosed,
    hIsEOF,
    hIsOpen,
    hIsReadable,
    hIsSeekable,
    hIsTerminalDevice,
    hIsWritable,
    hReady,
    hShow,
    hTell,
    hWaitForInput,
    -- ** File handle operations
    hClose,
    hFlush,
    hSeek,
    hSetBinaryMode,
    hSetBuffering,
    hSetEcho,
    hSetFileSize,
    hSetPosn,
    -- ** File handle types
    BufferMode(..),
    HandlePosn,
    IOMode(..),
    SeekMode(..),
    -- * Re-exports
#ifdef DEP_FILEPATH
    module System.FilePath,
#endif
#ifdef DEP_UNLIFTIO
    module UnliftIO.Temporary,
#endif
#ifdef DEP_UNLIFTIO
    module UnliftIO.Directory,
#elif defined(DEP_DIRECTORY)
    module System.Directory,
#endif
  ) where

#ifdef DEP_FILEPATH
import System.FilePath hiding (FilePath)
#endif
import System.IO
  (FilePath, HandlePosn, SeekMode(..), hGetPosn, hSetBinaryMode, hSetPosn,
    hShow)
#ifdef DEP_UNLIFTIO
import UnliftIO.IO
#else
import System.IO
#endif
#ifdef DEP_UNLIFTIO
import UnliftIO.Temporary
#endif
#ifdef DEP_UNLIFTIO
import UnliftIO.Directory
#elif defined(DEP_DIRECTORY)
import System.Directory
#endif
