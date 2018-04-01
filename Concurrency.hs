-- | Basic concurrency operations.

{-# language CPP #-}

module Concurrency
  ( -- * ThreadId
    ThreadId
  , myThreadId
  , mkWeakThreadId
    -- * Spawning threads
  , forkIO
  , forkIOWithUnmask
  , forkOn
  , forkOnWithUnmask
  , Async
  , asyncThreadId
#if MIN_VERSION_async(2,2,0)
  , compareAsyncs
#endif
  , async
  , asyncBound
  , asyncOn
  , asyncWithUnmask
  , asyncOnWithUnmask
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
#if MIN_VERSION_async(2,2,0)
  , ExceptionInLinkedThread(..)
#endif
  , race
  , race_
  , concurrently
  , concurrently_
  , mapConcurrently
  , mapConcurrently_
  , forConcurrently
  , forConcurrently_
  , replicateConcurrently
  , replicateConcurrently_
  , Concurrently(..)
    -- * Throwing asynchronous exceptions
  , throwTo
  , killThread
  , timeout
  , cancel
  , uninterruptibleCancel
  , cancelWith
#if MIN_VERSION_async(2,2,0)
  , AsyncCancelled(..)
#endif
    -- * Delay
  , threadDelay
  , registerDelay
    -- * Cooperative concurrency
  , yield
    -- * Thread info
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
import Control.Exception
import GHC.Conc
import System.Timeout
