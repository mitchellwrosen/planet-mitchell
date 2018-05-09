{-# language CPP #-}

module TVar
  (
#if defined(USE_STM) || defined(USE_UNLIFTIO)
    TVar,
    newTVar,
    newTVarIO,
    readTVar,
    readTVarIO,
    writeTVar,
    modifyTVar,
    modifyTVar',
    swapTVar,
    mkWeakTVar,
#endif
  ) where

#ifdef USE_UNLIFTIO
import UnliftIO.STM
#elif defined(USE_STM)
import Control.Concurrent.STM.TVar
#endif
