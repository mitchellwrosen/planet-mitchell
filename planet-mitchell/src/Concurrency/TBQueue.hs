{-# LANGUAGE CPP #-}

module Concurrency.TBQueue
  (
    TBQueue
  , newTBQueue
  , newTBQueueIO
  , readTBQueue
  , tryReadTBQueue
  , flushTBQueue
  , peekTBQueue
  , tryPeekTBQueue
  , writeTBQueue
  , unGetTBQueue
  , isEmptyTBQueue
  , isFullTBQueue
#if MIN_VERSION_stm(2,5,0)
  , lengthTBQueue
#endif
  ) where

import Control.Concurrent.STM.TBQueue (flushTBQueue)
#if MIN_VERSION_stm(2,5,0)
import Control.Concurrent.STM.TBQueue (lengthTBQueue)
#endif
import UnliftIO.STM (TBQueue, isEmptyTBQueue, isFullTBQueue, newTBQueue,
                     newTBQueueIO, peekTBQueue, readTBQueue, tryPeekTBQueue,
                     tryReadTBQueue, unGetTBQueue, writeTBQueue)
