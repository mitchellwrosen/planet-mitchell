{-# language CPP #-}

module Concurrency
  ( -- * Concurrency
#if defined(DEP_ASYNC) || defined(DEP_UNLIFTIO)
    -- ** High-level concurrency
    concurrently,
    concurrently_,
    race,
    race_,
    mapConcurrently,
    mapConcurrently_,
    forConcurrently,
    forConcurrently_,
    replicateConcurrently,
    replicateConcurrently_,
    Concurrently(..),
#endif
    -- ** Low-level concurrency using @forkIO@
    forkIO,
#if DEP_UNLIFTIO
    forkWithUnmask,
#else
    forkIOWithUnmask,
#endif
    forkOn,
    forkOnWithUnmask,
    forkFinally,
    throwTo,
    killThread,
#if defined(DEP_ASYNC) || defined(DEP_UNLIFTIO)
    -- ** Low-level concurrency using @async@
    Async,
    async,
    asyncBound,
    asyncOn,
    asyncWithUnmask,
    asyncOnWithUnmask,
    cancel,
    uninterruptibleCancel,
    cancelWith,
    withAsync,
    withAsyncBound,
    withAsyncOn,
    withAsyncWithUnmask,
    withAsyncOnWithUnmask,
    wait,
    waitSTM,
    waitCatch,
    waitCatchSTM,
    waitAny,
    waitAnySTM,
    waitAnyCatch,
    waitAnyCatchSTM,
    waitAnyCancel,
    waitAnyCatchCancel,
    waitEither,
    waitEitherSTM,
    waitEither_,
    waitEitherSTM_,
    waitEitherCatch,
    waitEitherCatchSTM,
    waitEitherCancel,
    waitEitherCatchCancel,
    waitBoth,
    waitBothSTM,
    poll,
    pollSTM,
    link,
    link2,
    asyncThreadId,
#ifdef DEP_ASYNC
    compareAsyncs,
    ExceptionInLinkedThread(..),
    AsyncCancelled(..),
#endif
#endif
    -- * STM
    STM,
    atomically,
    retry,
    throwSTM,
    catchSTM,
    unsafeIOToSTM,
    -- * Delay
    threadDelay,
    registerDelay,
    -- * Cooperative concurrency
    yield,
    -- * Thread info
    ThreadId,
    myThreadId,
    mkWeakThreadId,
    ThreadStatus(..),
    BlockReason(..),
    threadStatus,
    threadCapability,
    labelThread,
    -- * File descriptor blocking
    threadWaitRead,
    threadWaitReadSTM,
    threadWaitWrite,
    threadWaitWriteSTM,
    closeFdWith,
  ) where

import GHC.Conc
  (BlockReason(..), ThreadStatus(..), catchSTM, closeFdWith, labelThread, retry,
    threadStatus, threadWaitReadSTM, threadWaitWriteSTM, throwSTM,
    unsafeIOToSTM)
#ifdef DEP_UNLIFTIO
import UnliftIO.Concurrent
#else
import Control.Concurrent (forkFinally)
import GHC.Conc
#endif
#ifdef DEP_UNLIFTIO
import UnliftIO.Async
#ifdef DEP_ASYNC
import Control.Concurrent.Async
  (AsyncCancelled(..), ExceptionInLinkedThread(..), compareAsyncs)
#endif
#elif defined(DEP_ASYNC)
import Control.Concurrent.Async
#endif
#ifdef DEP_UNLIFTIO
import UnliftIO.STM
#endif
