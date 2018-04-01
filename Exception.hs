module Exception
  ( -- * Exception types
    SomeException(..)
  , Exception(..)
  , mapException
  , IOException
  , ArithException(..)
  , ArrayException(..)
  , AssertionFailed(..)
  , CompactionFailed(..)
  , ErrorCall(..)
  , NoMethodError(..)
  , PatternMatchFail(..)
  , RecConError(..)
  , RecSelError(..)
  , RecUpdError(..)
  , TypeError(..)
    -- ** Asynchronous exceptions
  , SomeAsyncException(..)
  , AsyncException(..)
  , asyncExceptionToException
  , asyncExceptionFromException
  , AllocationLimitExceeded(..)
  , BlockedIndefinitelyOnMVar(..)
  , BlockedIndefinitelyOnSTM(..)
  , Deadlock(..)
  , NestedAtomically(..)
  , NonTermination(..)
    -- * Throwing exceptions
  , throwIO
  , ioError
    -- * Catching exceptions
  , catch
  , catches
  , Handler(..)
  , catchJust
  , handle
  , handleJust
  , try
  , tryJust
    -- * Masking exceptions
    -- * Exception masking
  , MaskingState(..)
  , mask
  , mask_
  , uninterruptibleMask
  , uninterruptibleMask_
  , getMaskingState
  , interruptible
  , allowInterrupt
    -- * Cleanup
  , bracket
  , bracket_
  , bracketOnError
  , finally
  , onException
  ) where

import Control.Exception
