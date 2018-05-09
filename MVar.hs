{-# language CPP #-}

module MVar
  ( -- * MVar
    MVar
  , newEmptyMVar
  , newMVar
  , takeMVar
  , putMVar
  , readMVar
  , swapMVar
  , tryTakeMVar
  , tryPutMVar
  , isEmptyMVar
  , withMVar
  , withMVarMasked
  , modifyMVar_
  , modifyMVar
  , modifyMVarMasked_
  , modifyMVarMasked
  , tryReadMVar
  , mkWeakMVar
  ) where

#ifdef USE_UNLIFTIO
import UnliftIO.MVar
#else
import Control.Concurrent.MVar
#endif
