{-# language CPP #-}

module Concurrency.MVar
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

#ifdef DEP_UNLIFTIO
import UnliftIO.MVar
#else
import Control.Concurrent.MVar
#endif
