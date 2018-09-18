{-# language CPP #-}

module Process
  (
#ifdef DEP_UNIX
    -- * Exiting the current process
    exitImmediately,
    -- * Replacing the current process
    executeFile,
    -- * Process info
    getProcessID,
    getParentProcessID,
    -- ** Process groups
    getProcessGroupID,
    getProcessGroupIDOf,
    createProcessGroupFor,
    joinProcessGroup,
    setProcessGroupIDOf,
    createSession,
#endif
    -- * Spawning processes
#ifdef DEP_TYPED_PROCESS
    module System.Process.Typed,
#endif
#ifdef DEP_UNIX
    forkProcess,
    forkProcessWithUnmask,
    -- ** Waiting
    getProcessStatus,
    getAnyProcessStatus,
    getGroupProcessStatus,
#endif
  ) where

#ifdef DEP_UNIX
import System.Posix.Process
  (createProcessGroupFor, createSession, executeFile, exitImmediately,
    forkProcess, forkProcessWithUnmask, getAnyProcessStatus,
    getGroupProcessStatus, getParentProcessID, getProcessGroupID,
    getProcessGroupIDOf, getProcessID, getProcessStatus, joinProcessGroup,
    setProcessGroupIDOf)
#endif
#ifdef DEP_TYPED_PROCESS
import System.Process.Typed
#endif
