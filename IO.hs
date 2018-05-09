{-# language CPP #-}

module IO
  ( -- * IO
    IO,
    fixIO,
    timeout,
#ifdef EXTRA
    once,
    onceFork,
#endif
    -- * IO exceptions
    module System.IO.Error,
    -- * Unsafe functions
    unsafePerformIO,
    unsafeDupablePerformIO,
    unsafeInterleaveIO,
    unsafeFixIO,
  ) where

#ifdef EXTRA
import Control.Concurrent.Extra (once, onceFork)
#endif
import System.IO
import System.IO.Error
import System.IO.Unsafe
import UnliftIO.Timeout
