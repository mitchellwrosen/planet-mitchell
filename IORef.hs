{-# language CPP #-}

module IORef
  ( IORef,
    newIORef,
    readIORef,
    writeIORef,
#ifdef EXTRA
    writeIORef',
#endif
    modifyIORef,
    modifyIORef',
    atomicModifyIORef,
    atomicModifyIORef',
    atomicWriteIORef,
#ifdef EXTRA
    atomicWriteIORef',
#endif
    mkWeakIORef,
    -- * Atomic check-and-set
#ifdef ATOMIC_PRIMOPS
    Ticket,
    peekTicket,
    readForCAS,
    casIORef,
    casIORef2,
    atomicModifyIORefCAS,
    atomicModifyIORefCAS_,
#endif
  ) where

#ifdef EXTRA
import Data.IORef.Extra (atomicWriteIORef', writeIORef')
#endif
#ifdef ATOMIC_PRIMOPS
import Data.Atomics
#endif
import UnliftIO.IORef
