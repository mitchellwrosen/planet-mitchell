{-| This module contains:

    * High-level types and functions from @async@.
    * Low-level types and functions from "Control.Concurrent" in @base@.
    * Even lower-level types and functions from "GHC.Conc" in @base@.
-}

{-# language CPP #-}

module Concurrency
  ( -- * Concurrency
    -- ** High-level concurrency
    concurrently
  , concurrently_
  , race
  , race_
  , mapConcurrently
  , mapConcurrently_
  , forConcurrently
  , forConcurrently_
  , replicateConcurrently
  , replicateConcurrently_
  , Concurrently(..)
    -- ** Low-level concurrency using @forkIO@
  , forkIO
  , forkIOWithUnmask
  , forkOn
  , forkOnWithUnmask
  , throwTo
  , killThread
    -- ** Low-level concurrency using @async@
  , Async
  , async
  , asyncBound
  , asyncOn
  , asyncWithUnmask
  , asyncOnWithUnmask
  , cancel
  , uninterruptibleCancel
  , cancelWith
  , withAsync
  , withAsyncBound
  , withAsyncOn
  , withAsyncWithUnmask
  , withAsyncOnWithUnmask
  , wait
  , waitSTM
  , waitCatch
  , waitCatchSTM
  , waitAny
  , waitAnySTM
  , waitAnyCatch
  , waitAnyCatchSTM
  , waitAnyCancel
  , waitAnyCatchCancel
  , waitEither
  , waitEitherSTM
  , waitEither_
  , waitEitherSTM_
  , waitEitherCatch
  , waitEitherCatchSTM
  , waitEitherCancel
  , waitEitherCatchCancel
  , waitBoth
  , waitBothSTM
  , poll
  , pollSTM
  , link
  , link2
  , asyncThreadId
#if MIN_VERSION_async(2,2,0)
  , compareAsyncs
  , ExceptionInLinkedThread(..)
  , AsyncCancelled(..)
#endif
    -- * Delay
  , threadDelay
  , registerDelay
    -- * Cooperative concurrency
  , yield
    -- * Thread info
  , ThreadId
  , myThreadId
  , mkWeakThreadId
  , ThreadStatus(..)
  , BlockReason(..)
  , threadStatus
  , threadCapability
  , labelThread
    -- * File descriptor blocking
  , threadWaitRead
  , threadWaitReadSTM
  , threadWaitWrite
  , threadWaitWriteSTM
  , closeFdWith
  ) where

import Control.Concurrent.Async
import GHC.Conc
