{-# language CPP #-}

module Concurrency.TChan
  (
#if defined(DEP_STM) || defined(DEP_UNLIFTIO)
    -- * TChan
    TChan,
    newTChan,
    newTChanIO,
    newBroadcastTChan,
    newBroadcastTChanIO,
    dupTChan,
    cloneTChan,
    readTChan,
    tryReadTChan,
    peekTChan,
    tryPeekTChan,
    writeTChan,
    unGetTChan,
    isEmptyTChan,
#endif
  ) where

#ifdef DEP_UNLIFTIO
import UnliftIO.STM
#elif defined(DEP_STM)
import Control.Concurrent.STM.TChan
#endif
