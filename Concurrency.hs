{-# language CPP #-}

module Concurrency
  ( -- * Concurrency
#if defined(USE_ASYNC) || defined(USE_UNLIFTIO)
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
#if USE_UNLIFTIO
    forkWithUnmask,
#else
    forkIOWithUnmask,
#endif
    forkOn,
    forkOnWithUnmask,
    throwTo,
    killThread,
#if defined(USE_ASYNC) || defined(USE_UNLIFTIO)
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
#ifdef USE_ASYNC
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
#ifdef USE_UNLIFTIO
import UnliftIO.Concurrent
#else
import GHC.Conc
#endif
#ifdef USE_UNLIFTIO
import UnliftIO.Async
#ifdef USE_ASYNC
import Control.Concurrent.Async
  (AsyncCancelled(..), ExceptionInLinkedThread(..), compareAsyncs)
#endif
#elif defined(USE_ASYNC)
import Control.Concurrent.Async
#endif
#ifdef USE_UNLIFTIO
import UnliftIO.STM
#endif
