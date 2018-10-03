{-# LANGUAGE CPP #-}

module Concurrency.TVar
  ( -- * TVar
    TVar
  , newTVar
  , newTVarIO
  , readTVar
  , readTVarIO
  , writeTVar
  , modifyTVar
  , modifyTVar'
#if MIN_VERSION_stm(2,5,0)
  , stateTVar
#endif
  , swapTVar
  , mkWeakTVar
  ) where

import UnliftIO.STM
#if MIN_VERSION_stm(2,5,0)
import Control.Concurrent.STM.TVar (stateTVar)
#endif
