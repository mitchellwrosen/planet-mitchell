{-# language CPP #-}

#ifdef USE_STM

module TSem
  ( TSem
  , newTSem
  , waitTSem
  , signalTSem
  , signalTSemN
  ) where

import Control.Concurrent.STM.TSem

#else

module TSem where

#endif
