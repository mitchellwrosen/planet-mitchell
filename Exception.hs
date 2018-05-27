{-# language CPP #-}

module Exception
  ( -- * Throwing exceptions
    throwIO,
    -- ** Specific exceptions
    ioError,
    userError,
    exitWith,
    exitFailure,
    exitSuccess,
    die,
#ifdef USE_UNLIFTIO
    -- * Catching exceptions
    catch,
    catches,
    Handler(..),
    catchJust,
    handle,
    handleJust,
    try,
    tryJust,
    -- * Cleanup
    bracket,
    bracket_,
    bracketOnError,
    finally,
    onException,
#endif
    -- * Masking exceptions
    MaskingState(..),
#ifdef USE_UNLIFTIO
    mask,
    mask_,
    uninterruptibleMask,
    uninterruptibleMask_,
#endif
    getMaskingState,
    interruptible,
    allowInterrupt,
    -- * Exception types
    SomeException(..),
    Exception(..),
    mapException,
    ExitCode(..),
    IOException,
    -- ** Asynchronous exceptions
    SomeAsyncException(..),
    AsyncException(..),
    asyncExceptionToException,
    asyncExceptionFromException,
  ) where

import Control.Exception
  (AsyncException(..), Exception(..), IOException, MaskingState(..),
    SomeAsyncException(..), SomeException(..), allowInterrupt,
    asyncExceptionFromException, asyncExceptionToException, getMaskingState,
    interruptible, ioError, mapException)
import System.IO.Error (userError)
#ifdef USE_UNLIFTIO
import UnliftIO.Exception hiding
  (Exception(..), IOException, SomeAsyncException(..), SomeException(..))
#else
import Control.Exception (throwIO)
#endif
import System.Exit (ExitCode(..), die, exitFailure, exitSuccess, exitWith)
