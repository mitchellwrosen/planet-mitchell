{-# language CPP #-}

module IORef
  ( -- * IORef
    IORef,
    newIORef,
    readIORef,
    writeIORef,
#ifdef USE_EXTRA
    writeIORef',
#endif
    modifyIORef,
    modifyIORef',
    atomicModifyIORef,
    atomicModifyIORef',
    atomicWriteIORef,
#ifdef USE_EXTRA
    atomicWriteIORef',
#endif
    mkWeakIORef,
#ifdef USE_ATOMIC_PRIMOPS
    -- * Atomic check-and-set
    Ticket,
    peekTicket,
    readForCAS,
    casIORef,
    casIORef2,
    atomicModifyIORefCAS,
    atomicModifyIORefCAS_,
#endif
  ) where

#ifdef USE_EXTRA
import Data.IORef.Extra (atomicWriteIORef', writeIORef')
#endif
#ifdef USE_ATOMIC_PRIMOPS
import Data.Atomics
#endif
#ifdef USE_UNLIFTIO
import UnliftIO.IORef
#else
import Data.IORef
#endif
