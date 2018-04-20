module Exception
  ( -- * Throwing exceptions
    throwIO
  , ioError
  , userError
    -- * Catching exceptions
  , catch
  , catches
  , Handler(..)
  , catchJust
  , handle
  , handleJust
  , try
  , tryJust
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
  , IOException
    -- ** Asynchronous exceptions
  , SomeAsyncException(..)
  , AsyncException(..)
  , asyncExceptionToException
  , asyncExceptionFromException
  ) where

import Control.Exception
  (AsyncException(..), MaskingState(..), allowInterrupt,
    asyncExceptionFromException, asyncExceptionToException, getMaskingState,
    interruptible, ioError, mapException)
import System.IO.Error (userError)
import UnliftIO.Exception
