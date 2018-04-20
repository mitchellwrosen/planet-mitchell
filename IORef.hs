module IORef
  ( IORef
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

import UnliftIO.IORef
import Data.IORef.Extra (atomicWriteIORef', writeIORef')
