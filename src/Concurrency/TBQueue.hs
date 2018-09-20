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
  ) where

import Control.Concurrent.STM.TBQueue (flushTBQueue)
import UnliftIO.STM
  (TBQueue, isEmptyTBQueue, isFullTBQueue, newTBQueue, newTBQueueIO,
    peekTBQueue, readTBQueue, tryPeekTBQueue, tryReadTBQueue, unGetTBQueue,
    writeTBQueue)
