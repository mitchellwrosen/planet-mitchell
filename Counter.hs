{-# language CPP #-}

#ifdef USE_ATOMIC_PRIMOPS

module Counter
  ( -- * Counter
    AtomicCounter
  , newCounter
  , incrCounter
  , incrCounter_
  , readCounter
  , casCounter
  ) where

import Data.Atomics.Counter

#else

module Counter where

#endif
