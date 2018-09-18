{-# language CPP #-}

module IO
  ( -- * IO
    IO,
    MonadIO(..),
    fixIO,
    timeout,
#ifdef DEP_EXTRA
    once,
    onceFork,
#endif
    -- * IO exceptions
    module System.IO.Error,
  ) where

#ifdef DEP_EXTRA
import Control.Concurrent.Extra (once, onceFork)
#endif
import Control.Monad.IO.Class (MonadIO(..))
import System.IO
import System.IO.Error
#ifdef DEP_UNLIFTIO
import UnliftIO.Timeout (timeout)
#else
import System.Timeout (timeout)
#endif
