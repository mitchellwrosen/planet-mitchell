module Concurrency.Counter
  ( -- * Counter
    AtomicCounter,
    newCounter,
    incrCounter,
    incrCounter_,
    readCounter,
    casCounter
  ) where

import Data.Atomics.Counter
