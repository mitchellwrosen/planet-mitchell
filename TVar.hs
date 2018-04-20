module TVar
  ( TVar
  , newTVar
  , newTVarIO
  , readTVar
  , readTVarIO
  , writeTVar
  , modifyTVar
  , modifyTVar'
  , swapTVar
  , mkWeakTVar
  ) where

import UnliftIO.STM -- Control.Concurrent.STM.TVar
