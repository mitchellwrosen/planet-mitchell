{-# language CPP #-}

module RTS
  ( -- * Garbage collection
    performGC
  , performMajorGC
  , performMinorGC
    -- * Allocation counter and limits
  , setAllocationCounter
  , getAllocationCounter
  , enableAllocationLimit
  , disableAllocationLimit
    -- * Capabilities
  , getNumCapabilities
  , setNumCapabilities
    -- * Spark pool
  , numSparks
  , runSparks
    -- * Processors
  , getNumProcessors
    -- * Uncaught exception handler
  , getUncaughtExceptionHandler
  , setUncaughtExceptionHandler
    -- * Event manager
  , EventManager
  , getSystemEventManager
  , new
  , Event
  , evtRead
  , evtWrite
  , IOCallback
  , FdKey
  , Lifetime
  , registerFd
  , unregisterFd
  , unregisterFd_
  , closeFd
    -- * Timer manager
  , TimerManager
  , TimeoutCallback
  , TimeoutKey
  , registerTimeout
  , updateTimeout
  , unregisterTimeout
    -- * Runtime stats
  , RTSStats(..)
  , GCDetails(..)
  , RtsTime
  , getRTSStats
  , getRTSStatsEnabled
#ifdef DEP_ATOMIC_PRIMOPS
    -- * Memory barriers
  , storeLoadBarrier
  , loadLoadBarrier
  , writeBarrier
#endif
  ) where

#ifdef DEP_ATOMIC_PRIMOPS
import Data.Atomics
#endif
import GHC.Conc
import GHC.Event
import GHC.Stats
import System.Mem
