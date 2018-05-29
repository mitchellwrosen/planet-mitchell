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
#if defined(USE_UNLIFTIO) || defined(USE_SAFE_EXCEPTIONS)
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
#if defined(USE_UNLIFTIO) || defined(USE_SAFE_EXCEPTIONS)
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
#elif defined(USE_SAFE_EXCEPTIONS)
import Control.Exception.Safe
  (Handler(..), bracket, bracket_, bracketOnError, catch, catches, catchJust,
    finally, handle, handleJust, mask, mask_, onException, throwIO, try,
    tryJust, uninterruptibleMask, uninterruptibleMask_)
#else
import Control.Exception (throwIO)
#endif
import System.Exit (ExitCode(..), die, exitFailure, exitSuccess, exitWith)
