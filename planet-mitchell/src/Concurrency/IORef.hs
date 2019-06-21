module Concurrency.IORef
  ( -- * IORef
    IORef
  , newIORef
  , readIORef
  , writeIORef
  , writeIORef'
  , modifyIORef
  , modifyIORef'
  , atomicModifyIORef
  , atomicModifyIORef'
  , atomicWriteIORef
  , atomicWriteIORef'
  , mkWeakIORef
  ) where

import Data.IORef.Extra (atomicWriteIORef', writeIORef')
import UnliftIO.IORef
