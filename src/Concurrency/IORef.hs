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
    -- * Atomic check-and-set
  , Ticket
  , peekTicket
  , readForCAS
  , casIORef
  , casIORef2
  , atomicModifyIORefCAS
  , atomicModifyIORefCAS_
  ) where

import Data.Atomics
import Data.IORef.Extra (atomicWriteIORef', writeIORef')
import UnliftIO.IORef
