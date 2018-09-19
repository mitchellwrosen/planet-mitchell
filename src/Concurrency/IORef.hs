{-# language CPP #-}

module Concurrency.IORef
  ( -- * IORef
    IORef,
    newIORef,
    readIORef,
    writeIORef,
#ifdef DEP_EXTRA
    writeIORef',
#endif
    modifyIORef,
    modifyIORef',
    atomicModifyIORef,
    atomicModifyIORef',
    atomicWriteIORef,
#ifdef DEP_EXTRA
    atomicWriteIORef',
#endif
    mkWeakIORef,
#ifdef DEP_ATOMIC_PRIMOPS
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

#ifdef DEP_EXTRA
import Data.IORef.Extra (atomicWriteIORef', writeIORef')
#endif
#ifdef DEP_ATOMIC_PRIMOPS
import Data.Atomics
#endif
#ifdef DEP_UNLIFTIO
import UnliftIO.IORef
#else
import Data.IORef
#endif
