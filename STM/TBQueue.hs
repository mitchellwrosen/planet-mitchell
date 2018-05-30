{-# language CPP #-}

module STM.TBQueue
  (
#if defined(USE_STM) || defined(USE_UNLIFTIO)
    TBQueue
  , newTBQueue
  , newTBQueueIO
  , readTBQueue
  , tryReadTBQueue
#ifdef USE_STM
  , flushTBQueue
#endif
  , peekTBQueue
  , tryPeekTBQueue
  , writeTBQueue
  , unGetTBQueue
  , isEmptyTBQueue
  , isFullTBQueue
#endif
  ) where

#ifdef USE_STM
import Control.Concurrent.STM.TBQueue (flushTBQueue)
#endif
#ifdef USE_UNLIFTIO
import UnliftIO.STM
  (TBQueue, isEmptyTBQueue, isFullTBQueue, newTBQueue, newTBQueueIO,
    peekTBQueue, readTBQueue, tryPeekTBQueue, tryReadTBQueue, unGetTBQueue,
    writeTBQueue)
#elif defined(USE_STM)
import Control.Concurrent.STM.TBQueue
#endif
