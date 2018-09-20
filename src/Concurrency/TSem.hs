module Concurrency.TSem
  ( -- * TSem
    TSem
  , newTSem
  , waitTSem
  , signalTSem
  , signalTSemN
  ) where

import Control.Concurrent.STM.TSem
