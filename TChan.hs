{-# language CPP #-}

module TChan
  (
#if defined(USE_STM) || defined(USE_UNLIFTIO)
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

#ifdef USE_UNLIFTIO
import UnliftIO.STM
#elif defined(USE_STM)
import Control.Concurrent.STM.TChan
#endif
