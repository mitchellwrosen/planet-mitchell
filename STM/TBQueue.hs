{-# language CPP #-}

module STM.TBQueue
  (
#if defined(DEP_STM) || defined(DEP_UNLIFTIO)
    TBQueue
  , newTBQueue
  , newTBQueueIO
  , readTBQueue
  , tryReadTBQueue
#ifdef DEP_STM
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

#ifdef DEP_STM
import Control.Concurrent.STM.TBQueue (flushTBQueue)
#endif
#ifdef DEP_UNLIFTIO
import UnliftIO.STM
  (TBQueue, isEmptyTBQueue, isFullTBQueue, newTBQueue, newTBQueueIO,
    peekTBQueue, readTBQueue, tryPeekTBQueue, tryReadTBQueue, unGetTBQueue,
    writeTBQueue)
#elif defined(DEP_STM)
import Control.Concurrent.STM.TBQueue
#endif
