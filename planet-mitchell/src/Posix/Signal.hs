module Posix.Signal
  ( -- * Signals
    Signal
  , sigABRT
  , sigALRM
  , sigBUS
  , sigCHLD
  , sigCONT
  , sigFPE
  , sigHUP
  , sigILL
  , sigINT
  , sigKILL
  , sigPIPE
  , sigPOLL
  , sigPROF
  , sigQUIT
  , sigSEGV
  , sigSTOP
  , sigSYS
  , sigTERM
  , sigTRAP
  , sigTSTP
  , sigTTIN
  , sigTTOU
  , sigURG
  , sigUSR1
  , sigUSR2
  , sigVTALRM
  , sigXCPU
  , sigXFSZ
    -- * Sending signals
  , raiseSignal
  , signalProcess
  , signalProcessGroup
    -- * Handling signals
  , installHandler
  , Handler(..)
  , SignalInfo(..)
  , SignalSpecificInfo(..)
    -- * Signal sets
  , SignalSet
  , emptySignalSet
  , fullSignalSet
  , reservedSignals
  , addSignal
  , deleteSignal
  , inSignalSet
    -- * Signal mask
  , getSignalMask
  , setSignalMask
  , blockSignals
  , unblockSignals
    -- * Alarm timer
  , scheduleAlarm
    -- * Waiting for signals
  , getPendingSignals
  , awaitSignal
    -- * NOCLDSTOP
  , setStoppedChildFlag
  , queryStoppedChildFlag
  ) where

import System.Posix.Signals
