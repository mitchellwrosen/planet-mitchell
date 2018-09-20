module Exception
  ( -- * Throwing exceptions
    throwIO
    -- ** Throwing specific exceptions
  , ioError
  , userError
  , exitWith
  , exitFailure
  , exitSuccess
  , die
    -- * Catching exceptions
  , catch
  , catchAny
  , catches
  , Handler(..)
  , catchJust
  , handle
  , handleJust
  , try
  , tryAny
  , tryJust
  , tryIO
    -- * Cleanup
  , bracket
  , bracket_
  , bracketOnError
  , finally
  , onException
    -- * Masking exceptions
  , MaskingState(..)
  , mask
  , mask_
  , uninterruptibleMask
  , uninterruptibleMask_
  , getMaskingState
  , interruptible
  , allowInterrupt
    -- * Exception types
  , SomeException(..)
  , Exception(..)
  , mapException
  , ExitCode(..)
  , IOException
    -- ** Asynchronous exceptions
  , SomeAsyncException(..)
  , AsyncException(..)
  , asyncExceptionToException
  , asyncExceptionFromException
  ) where

import Control.Exception  (AsyncException(..), Exception(..), IOException,
                           MaskingState(..), SomeAsyncException(..),
                           SomeException(..), allowInterrupt,
                           asyncExceptionFromException,
                           asyncExceptionToException, getMaskingState,
                           interruptible, ioError, mapException)
import System.Exit        (ExitCode(..), die, exitFailure, exitSuccess,
                           exitWith)
import System.IO.Error    (userError)
import UnliftIO.Exception hiding (Exception(..), IOException,
                           SomeAsyncException(..), SomeException(..))
