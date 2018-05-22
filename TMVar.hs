{-# language CPP #-}

module TMVar
  (
    TMVar,
    newTMVar,
    newTMVarIO,
    newEmptyTMVar,
    newEmptyTMVarIO,
    takeTMVar,
    tryTakeTMVar,
    putTMVar,
    tryPutTMVar,
    readTMVar,
    tryReadTMVar,
    swapTMVar,
    isEmptyTMVar,
    mkWeakTMVar,
  ) where

#ifdef USE_UNLIFTIO
import UnliftIO.STM
#else
import Control.Concurrent.STM.TMVar
#endif
