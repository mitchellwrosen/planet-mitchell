{-# language CPP #-}
module TMVar
  (
#if defined(USE_STM) || defined(USE_UNLIFTIO)
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
#endif
  ) where

#ifdef USE_UNLIFTIO
import UnliftIO.STM
#elif defined(USE_STM)
import Control.Concurrent.STM.TMVar
#endif
