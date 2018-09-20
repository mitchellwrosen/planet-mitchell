module Process
  (
    -- * Spawning processes
    -- ** High-level Haskell API
    module System.Process.Typed
    -- ** Low-level POSIX API
  , forkProcess
  , forkProcessWithUnmask
    -- ** Waiting
  , getProcessStatus
  , getAnyProcessStatus
  , getGroupProcessStatus
    -- * Exiting the current process
  , exitImmediately
    -- * Replacing the current process
  , executeFile
    -- * Process info
  , getProcessID
  , getParentProcessID
    -- ** Process groups
  , getProcessGroupID
  , getProcessGroupIDOf
  , createProcessGroupFor
  , joinProcessGroup
  , setProcessGroupIDOf
  , createSession
  ) where

import System.Posix.Process
  (createProcessGroupFor, createSession, executeFile, exitImmediately,
    forkProcess, forkProcessWithUnmask, getAnyProcessStatus,
    getGroupProcessStatus, getParentProcessID, getProcessGroupID,
    getProcessGroupIDOf, getProcessID, getProcessStatus, joinProcessGroup,
    setProcessGroupIDOf)
import System.Process.Typed
