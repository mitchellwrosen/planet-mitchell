{-| This module contains:

    * The "System.CPUTime" module from @base@.
    * On GHC 8.4+, the "GHC.Clock" module from @base@.
-}

{-# language CPP #-}

module Clock
  (
#if MIN_VERSION_base(4,11,0)
    -- * Monotonic time
    getMonotonicTime
  , getMonotonicTimeNSec
  ,
#endif
    -- * CPU time
    getCPUTime
  , cpuTimePrecision
  ) where

#if MIN_VERSION_base(4,11,0)
import GHC.Clock
#endif
import System.CPUTime
