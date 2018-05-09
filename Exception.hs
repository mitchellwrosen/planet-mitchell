{-# language CPP #-}

module Exception
  ( -- * Throwing exceptions
    throwIO
  , ioError
  , userError
#ifdef USE_UNLIFTIO
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
#endif
    -- * Masking exceptions
  , MaskingState(..)
#ifdef USE_UNLIFTIO
  , mask
  , mask_
  , uninterruptibleMask
  , uninterruptibleMask_
#endif
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
