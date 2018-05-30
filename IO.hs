{-# language CPP #-}

module IO
  ( -- * IO
    IO,
    fixIO,
    timeout,
#ifdef DEP_EXTRA
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

#ifdef DEP_EXTRA
import Control.Concurrent.Extra (once, onceFork)
#endif
import System.IO
import System.IO.Error
import System.IO.Unsafe
#ifdef DEP_UNLIFTIO
import UnliftIO.Timeout (timeout)
#else
import System.Timeout (timeout)
#endif
