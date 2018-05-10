module TSem
  ( TSem
  , newTSem
  , waitTSem
  , signalTSem
  , signalTSemN
  ) where

import Control.Concurrent.STM.TSem
