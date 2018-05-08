{-# language CPP #-}

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
    -- * Atomic check-and-set
#ifdef ATOMIC_PRIMOPS
  , Ticket
  , peekTicket
  , readForCAS
  , casIORef
  , casIORef2
  , atomicModifyIORefCAS
  , atomicModifyIORefCAS_
#endif
  ) where

import Data.IORef.Extra (atomicWriteIORef', writeIORef')
#ifdef ATOMIC_PRIMOPS
import Data.Atomics
#endif
import UnliftIO.IORef
