module TVar
  ( TVar
  , newTVar
  , newTVarIO
  , readTVar
  , readTVarIO
  , writeTVar
  ) where

import Control.Concurrent.STM.TVar
